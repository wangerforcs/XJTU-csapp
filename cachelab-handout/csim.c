#include "cachelab.h"
#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
typedef unsigned long long int mem_addr_t,tagval;
typedef struct{
    int val_bit,time;
    tagval tag;
} cache_line;
typedef cache_line *ptr;
typedef cache_line **pptr;

char *openfile;
int v,s,E,b,hit,miss,eviction,S,B;
pptr cache_arr;

void readopt(int argc,char ** argv);
void readopr(char *file);
void execmd(char ident,mem_addr_t add,int size);
int cacheline(int gp,tagval tag);
pptr build_cache();
void free_cache();
void updete_time(int gp,int line);

int main(int argc, char** argv){
    readopt(argc,argv);
    cache_arr=build_cache();
    readopr(openfile);
    printSummary(hit, miss, eviction);
    free_cache();
    return 0;
}

void readopt(int argc,char ** argv)
{
    int opt;
    while(-1 != (opt = getopt(argc, argv, "vs:E:b:t:"))){
        switch(opt) {
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'v':
                v = 1;
                break;
            case 't':
                openfile = optarg;
                break;
            case 'b':
                b = atoi(optarg);
                break;
            default:
                printf("wrong argument\n");
                break;
        }
    }
    B=(1<<b);
    S=(1<<s);
    // printf("v:%d s:%d E:%d b:%d file:%s\n",v,s,E,b,openfile);
}
pptr build_cache()
{
    pptr res;
    B=(1<<b);
    S=(1<<s);
    //res[S][E]
    res=malloc(sizeof(ptr)*S);
    for(int i=0;i<S;i++)
    *(res+i)=malloc(sizeof(cache_line)*E);
    for(int i=0;i<S;i++)
    {
        for(int j=0;j<E;j++)
        {
            res[i][j].val_bit=0;
            res[i][j].tag=0;
            res[i][j].time=0;
        }
    }
    return res;
}
void readopr(char *file)
{
    const int cmdlen=50;
    FILE * des;
    char flag,trash[cmdlen],identifier;
    mem_addr_t address;
    int size;
    trash[0]='t',trash[1]='\0';
    des = fopen(file,"r");
    if(!des) {
        printf("file dose not exist\n");
        exit(0);
    }
    while((flag=fgetc(des))>0)
    {
        if(flag!=' ') {
            fgets(trash,cmdlen-1,des);
            // fgetc(des);
        }
        else{
            fscanf(des,"%c %llx,%d",&identifier,&address,&size);
            fgetc(des);
        }
        if(flag==' ')
        execmd(identifier,address,size);
        // if(flag==' ')
        // printf("%c %c\n",flag,identifier);
    }
    fclose(des);
}
tagval get_tag(mem_addr_t add)
{
    return add>>(s+b);
}
int get_gp(mem_addr_t add)
{
    return (int)((add>>b)&((1<<s)-1));
}
void updete_time(int gp,int line)
{
    for(int i=0;i<E;i++)
    {
        if(i==line) continue;
        else{
            cache_arr[gp][i].time++;
        }
    }
}
void execmd(char ident,mem_addr_t add,int size)
{
    tagval tag=get_tag(add);
    int gp=get_gp(add);
    int hit_delta=0,miss_delta=0,eviction_delta=0;
    for(int i=0;i<E;i++)
    {
        if(tag==cache_arr[gp][i].tag&&cache_arr[gp][i].val_bit)
        {
            //!!!!!!
            if(ident=='M')
            hit_delta=2;
            else hit_delta=1;
            
            cache_arr[gp][i].time=0;
            updete_time(gp,i);
            break;
        }
    }
    if(!hit_delta) {
        miss_delta=1;
        //!!!!!
        if(ident=='M')
        hit_delta=1;

        eviction_delta=cacheline(gp,tag);
    }
    hit+=hit_delta;
    miss+=miss_delta;
    eviction+=eviction_delta;
    if(v)
    {
        printf("%c %llx,%d ",ident,add,size);
        if(miss_delta) printf("miss ");
        if(eviction_delta) printf("eviction ");
        if(hit_delta) printf("hit ");
        printf("\n");
    }
}
int cacheline(int gp,tagval tag)
{
    for(int j=0;j<E;j++)
    {
        if(cache_arr[gp][j].val_bit==0)
        {
            cache_arr[gp][j].val_bit=1;
            cache_arr[gp][j].tag=tag;
            cache_arr[gp][j].time=0;
            updete_time(gp,j);
            return 0;
        }
    }
    int rmline=0,t=cache_arr[gp][0].time;
    for(int j=1;j<E;j++)
    {
        if(t<cache_arr[gp][j].time)
        {
            rmline=j;
            t=cache_arr[gp][j].time;
        }
    }
    cache_arr[gp][rmline].tag=tag;
    cache_arr[gp][rmline].time=0;
    cache_arr[gp][rmline].val_bit=1;
    updete_time(gp,rmline);
    return 1;
}
void free_cache()
{
    for(int i=0;i<S;i++)
    free(*(cache_arr+i));
    free(cache_arr);
}