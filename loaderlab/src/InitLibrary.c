#include <stdlib.h>
#include <stdio.h>
#include <elf.h>
#include <stdint.h>

#include "Link.h"
#include "LoaderInternal.h"

void InitLibrary(LinkMap *lib)
{
    /* Your code here */
    int initArraysz=lib->dynInfo[DT_INIT_ARRAYSZ]->d_un.d_val;
    void (*init)()=(void (*)())(lib->dynInfo[DT_INIT]->d_un.d_ptr);
    init();
    int funcNum=initArraysz/sizeof(void*);
    Elf64_Addr funAddr=lib->dynInfo[DT_INIT_ARRAY]->d_un.d_ptr;
    for(int i=0;i<funcNum;i++)
    {
        init=(void (*)())(*(void**)(funAddr));
        init();
        funAddr+=sizeof(void*);
    }
    // for(int i=0;i<LIBCNT;i++)
    // {
    //     if(lib->dependLib[i])
    //     InitLibrary((LinkMap*)(lib->dependLib[i]));
    // }
}
