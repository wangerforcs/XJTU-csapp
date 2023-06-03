#include <dlfcn.h> //turn to dlsym for help at fake load object
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <elf.h>
#include <link.h>
#include <string.h>

#include "Link.h"
#include "LoaderInternal.h"
#include "Loader.h"

// glibc version to hash a symbol
static uint_fast32_t
dl_new_hash(const char *s)
{
    uint_fast32_t h = 5381;
    for (unsigned char c = *s; c != '\0'; c = *++s)
        h = h * 33 + c;
    return h & 0xffffffff;
}

// find symbol `name` inside the symbol table of `dep`
void *symbolLookup(LinkMap *dep, const char *name)
{
    if(dep->fake)
    {
        void *handle = dlopen(dep->name, RTLD_LAZY);
        if(!handle)
        {
            fprintf(stderr, "relocLibrary error: cannot dlopen a fake object named %s", dep->name);
            abort();
        }
        dep->fakeHandle = handle;
        return dlsym(handle, name);
    }

    Elf64_Sym *symtab = (Elf64_Sym *)dep->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *strtab = (const char *)dep->dynInfo[DT_STRTAB]->d_un.d_ptr;

    uint_fast32_t new_hash = dl_new_hash(name);
    Elf64_Sym *sym;
    const Elf64_Addr *bitmask = dep->l_gnu_bitmask;
    uint32_t symidx;
    Elf64_Addr bitmask_word = bitmask[(new_hash / __ELF_NATIVE_CLASS) & dep->l_gnu_bitmask_idxbits];
    unsigned int hashbit1 = new_hash & (__ELF_NATIVE_CLASS - 1);
    unsigned int hashbit2 = ((new_hash >> dep->l_gnu_shift) & (__ELF_NATIVE_CLASS - 1));
    if ((bitmask_word >> hashbit1) & (bitmask_word >> hashbit2) & 1)
    {
        Elf32_Word bucket = dep->l_gnu_buckets[new_hash % dep->l_nbuckets];
        if (bucket != 0)
        {
            const Elf32_Word *hasharr = &dep->l_gnu_chain_zero[bucket];
            do
            {
                if (((*hasharr ^ new_hash) >> 1) == 0)
                {
                    symidx = hasharr - dep->l_gnu_chain_zero;
                    /* now, symtab[symidx] is the current symbol.
                       Hash table has done its job */
                    const char *symname = strtab + symtab[symidx].st_name;
                    if (!strcmp(symname, name))
                    {    
                        Elf64_Sym *s = &symtab[symidx];
                        // return the real address of found symbol
                        return (void *)(s->st_value + dep->addr);
                    }
                }
            } while ((*hasharr++ & 1u) == 0);
        }
    }
    return NULL; //not this dependency
}

void RelocLibrary(LinkMap *lib, int mode)
{
    Elf64_Rela *rela_plt =NULL ;
    if(lib->dynInfo[DT_JMPREL])
        rela_plt=(Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
    size_t pltrelasz=0;
    if(lib->dynInfo[DT_PLTRELSZ])
        pltrelasz=lib->dynInfo[DT_PLTRELSZ]->d_un.d_val;
    Elf64_Rela *rela_dyn=(Elf64_Rela *)lib->dynInfo[DT_RELA]->d_un.d_ptr;
    void *got=(void*)(lib->dynInfo[DT_PLTGOT]->d_un.d_ptr);
    size_t relasz=lib->dynInfo[DT_RELASZ]->d_un.d_val;
    size_t relaent=lib->dynInfo[DT_RELAENT]->d_un.d_val;
    int pltRelaNum = pltrelasz / relaent;
    int relaNum = relasz / relaent;
    Elf64_Sym *Symtab=(Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    char *Strtab=(char *)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;

    LinkMap* fakemap=(LinkMap*)malloc(sizeof(LinkMap));
    fakemap->fake=1;
    
    if(mode==BIND_NOW){
        for (int i = 0; i < pltRelaNum; i++)
        {
            Elf64_Rela *rel = rela_plt+i;
            int type = ELF64_R_TYPE(rel->r_info);
            int symbolIndex = ELF64_R_SYM(rel->r_info);
            const char *symbolName = (char *)(Symtab[symbolIndex].st_name+Strtab);
            void *symAddr=getsymAddr(lib,symbolName);
            if(!symAddr) symAddr=symbolLookup(fakemap,symbolName);
            *(uint64_t*)(lib->addr + rel->r_offset) = (uint64_t)(symAddr+rel->r_addend);
        }
    }
    else if(mode==LAZY_BIND){
        for (int i = 0; i < pltRelaNum; i++)
        {
            Elf64_Rela *rel = rela_plt+i;
            *(uint64_t*)(lib->addr + rel->r_offset)+=(uint64_t)lib->addr;
        }
        *((void**)got+1)=(void*)lib;
        *((void(**)())got+2)=trampoline;
    }

    for(int i =0; i< relaNum; i++)
    {
        Elf64_Rela *rel = rela_dyn+i;
        int type = ELF64_R_TYPE(rel->r_info);
        int symbolIndex = ELF64_R_SYM(rel->r_info);
        if(type == R_X86_64_RELATIVE)
            *(uint64_t*)(lib->addr + rel->r_offset) = (uint64_t)(lib->addr+rel->r_addend);
        if(type == R_X86_64_GLOB_DAT)
        {
            if(ELF64_ST_BIND(Symtab[symbolIndex].st_info)==STB_WEAK)
            continue;
            char *symbolName=Symtab[symbolIndex].st_name+Strtab;
            void *symAddr=getsymAddr(lib,symbolName);
            if(!symAddr) symAddr=symbolLookup(fakemap,symbolName);
            *(uint64_t*)(lib->addr + rel->r_offset) = (uint64_t)(symAddr+rel->r_addend);
        }
    }
    for(int i=0;i<LIBCNT;i++)
    {
        if(lib->dependLib[i])
            RelocLibrary((LinkMap*)(lib->dependLib[i]),mode);
    }
}

void* getsymAddr(LinkMap*lib,const char* name)
{
    void* res=symbolLookup(lib,name);
    if(res) return res;
    for(int i=0;i<LIBCNT;i++)
    {
        if(lib->dependLib[i])
            res=symbolLookup((LinkMap*)lib->dependLib[i],name);
        if(res) return res;
    }
    return NULL;
}