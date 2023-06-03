#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <elf.h>
#include <unistd.h> //for getpagesize
#include <sys/mman.h>
#include <fcntl.h>

#include "Link.h"
#include "LoaderInternal.h"

#define ALIGN_DOWN(base, size) ((base) & -((__typeof__(base))(size)))
#define ALIGN_UP(base, size) ALIGN_DOWN((base) + (size)-1, (size))

static const char *sys_path[] = {
    "/usr/lib/x86_64-linux-gnu/",
    "/lib/x86_64-linux-gnu/",
    ""
};

static const char *fake_so[] = {
    "libc.so.6",
    "ld-linux.so.2",
    ""
};
static void setup_hash(LinkMap *l)
{
    uint32_t *hash;

    /* borrowed from dl-lookup.c:_dl_setup_hash */
    Elf32_Word *hash32 = (Elf32_Word *)l->dynInfo[DT_GNU_HASH]->d_un.d_ptr;
    l->l_nbuckets = *hash32++;
    Elf32_Word symbias = *hash32++;
    Elf32_Word bitmask_nwords = *hash32++;

    l->l_gnu_bitmask_idxbits = bitmask_nwords - 1;
    l->l_gnu_shift = *hash32++;

    l->l_gnu_bitmask = (Elf64_Addr *)hash32;
    hash32 += 64 / 32 * bitmask_nwords;

    l->l_gnu_buckets = hash32;
    hash32 += l->l_nbuckets;
    l->l_gnu_chain_zero = hash32 - symbias;
}

static void fill_info(LinkMap *lib)
{
    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Dyn **dyn_info = lib->dynInfo;

    while (dyn->d_tag != DT_NULL)
    {
        if ((Elf64_Xword)dyn->d_tag < DT_NUM)
            dyn_info[dyn->d_tag] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_RELACOUNT_)
            dyn_info[DT_RELACOUNT] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_GNU_HASH_)
            dyn_info[DT_GNU_HASH] = dyn;
        ++dyn;
    }
    #define rebase(tag)                             \
        do                                          \
        {                                           \
            if (dyn_info[tag])                          \
                dyn_info[tag]->d_un.d_ptr += lib->addr; \
        } while (0)
    rebase(DT_SYMTAB);
    rebase(DT_STRTAB);
    rebase(DT_RELA);
    rebase(DT_JMPREL);
    rebase(DT_GNU_HASH); //DT_GNU_HASH
    rebase(DT_PLTGOT);
    rebase(DT_INIT);
    rebase(DT_INIT_ARRAY);
}
void *MapLibrary(const char *libpath)
{
    LinkMap* lib = malloc(sizeof(LinkMap));
    if (!lib) {
        printf("malloc failed\n");
        exit(1);
    }
    int fd = open(libpath, O_RDONLY);
    if (fd < 0) {
        return NULL;
    }
    Elf64_Ehdr ehdr;
    Elf64_Phdr phdr;
    if (read(fd, &ehdr, sizeof(Elf64_Ehdr)) != sizeof(Elf64_Ehdr))
    {
        printf("read ehdr error\n");
        exit(3);
    }
    int pagesize=getpagesize();
    int sum_size=8*pagesize;
    void *addr = mmap(NULL, sum_size, PROT_READ|PROT_EXEC|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (addr == MAP_FAILED) {
        printf("outer mmap error\n");
        exit(4);
    }
    lseek(fd,ehdr.e_phoff,SEEK_SET);
    lib->addr=(uint64_t)addr;
    for (int i = 0; i < ehdr.e_phnum; i++) {
        if(read(fd,&phdr,sizeof(Elf64_Phdr))!=sizeof(Elf64_Phdr)){
            printf("read phdr error");
            exit(3);
        }
        if (phdr.p_type == PT_LOAD) {
            int prot = 0;
            prot |= (phdr.p_flags & PF_R)? PROT_READ : 0;
            prot |= (phdr.p_flags & PF_W)? PROT_WRITE : 0;
            prot |= (phdr.p_flags & PF_X)? PROT_EXEC : 0;
            void *begin=(void*)ALIGN_DOWN((lib->addr+phdr.p_vaddr),pagesize);
            size_t dis=(void*)(lib->addr+phdr.p_vaddr)-begin;
            addr= mmap(begin, (size_t)(phdr.p_vaddr+phdr.p_filesz)-dis, prot,MAP_PRIVATE|MAP_FIXED, fd, ALIGN_DOWN(phdr.p_offset,pagesize));
            if (addr == MAP_FAILED) {
                printf("inner mmap error\n");
                exit(4);
            }
        }
        if (phdr.p_type == PT_DYNAMIC) {
            lib->dyn = (Elf64_Dyn *)(lib->addr + phdr.p_vaddr);
        }
    }
    close(fd);
    fill_info(lib);
    setup_hash(lib);

    for(int i=0;i<LIBCNT;i++)
        lib->dependLib[i]=NULL;
    int dependcnt=0;
    Elf64_Dyn* dyn=lib->dyn;
    char* StrAddr=(char*)(lib->dynInfo[DT_STRTAB]->d_un.d_ptr);
    char dependLibpath[CHARLEN];
    while(dyn->d_tag){
        if(dyn->d_tag==DT_NEEDED)
        {
            int StrIndex=dyn->d_un.d_val;
            char* name=StrAddr+StrIndex;
            strcpy(dependLibpath,"./test_lib/");
            strcat(dependLibpath,name);
            lib->dependLib[dependcnt++]=MapLibrary(dependLibpath);
        }
        dyn++;
    }
    return lib;
}
// python3 autograder.py
