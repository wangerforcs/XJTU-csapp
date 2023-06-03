#include <elf.h>
#include <stdlib.h>
#include <stdio.h>
#include<string.h>

#include "Link.h"
#include "LoaderInternal.h"

Elf64_Addr __attribute__((visibility ("hidden"))) //this makes trampoline to call it w/o plt
runtimeResolve(LinkMap *lib, Elf64_Word reloc_entry)
{
    printf("Resolving address for entry %u\n", reloc_entry);
    LinkMap* fakemap=(LinkMap*)malloc(sizeof(LinkMap));
    fakemap->fake=1;

    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Rela *rela=(Elf64_Rela*)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
    Elf64_Sym *Symtab = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *Strtab = (const char *)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
    int symbolIndex=ELF64_R_SYM(rela[reloc_entry].r_info);
    const char *symbolName = Strtab + Symtab[symbolIndex].st_name;
    void* symbolAddr=getsymAddr(lib,symbolName);
    if(!symbolAddr) symbolAddr=symbolLookup(fakemap,symbolName);
    Elf64_Addr Addr=(Elf64_Addr)(symbolAddr+rela[reloc_entry].r_addend);
	*(uint64_t*)(lib->addr+rela[reloc_entry].r_offset)=Addr;
    return Addr;
}