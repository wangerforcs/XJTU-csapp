/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void change_row8(int N,int M,int x,int y,int A[N][M],int B[M][N])
{
    int a=A[x][y],b=A[x][y+1],c=A[x][y+2],d=A[x][y+3],e=A[x][y+4],f=A[x][y+5],g=A[x][y+6],h=A[x][y+7];
    B[y][x]=a,B[y+1][x]=b,B[y+2][x]=c,B[y+3][x]=d,B[y+4][x]=e,B[y+5][x]=f,B[y+6][x]=g,B[y+7][x]=h;
}
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if(M==32)
    {
        //cache can contain 8 lines 
        //32*32 (4+32)*32+32=1152+32=1184
        //8*8 344
        //8*8 with special 288
        //(8+8)*4*4=256 in theory
        for(int i=0;i<N;i+=8)
        {
            for(int j=0;j<M;j+=8)
            {
                if(i==j) continue;
                for(int p=i;p<i+8;p++)
                {
                    for(int q=j;q<j+8;q++)
                    {
                        B[q][p]=A[p][q];
                    }
                }
            }
        }
        //special judge for diagonal
        for(int i=0;i<N;i+=8)
        {
            for(int j=0;j<8;j++)
            change_row8(N,M,i+j,i,A,B);
        }
    }
    else if(M==64){
        //8*8 terrible, cause cache is 32*8, which can contain 4 rows of array, 
        //result in conflict ans high miss while writing B in just one block
        //4*4 1892 not fully used
        //4*4 with special 1700
        // for(int i=0;i<N;i+=4)
        // {
        //     for(int j=0;j<M;j+=4)
        //     {
        //         for(int k=0;k<4;k++)
        //         {
        //             int a=A[i+k][j],b=A[i+k][j+1],c=A[i+k][j+2],d=A[i+k][j+3];
        //             B[j][i+k]=a,B[j+1][i+k]=b,B[j+2][i+k]=c,B[j+3][i+k]=d;
        //         }
        //     }
        // }
        //tricky way 1180
        int a,b,c,d,e,f,g,h;
        for(int i=0;i<N;i+=8)
        {
            for(int j=0;j<M;j+=8)
            {
                /*
                for a 8*8 array, i divide it into 4 parts
                0   1
                2   3
                trans 0 and 1 of A, which will store in 0 and 1 of B;
                trans 2 of A, which will store in 1 of B, 
                move 1 of B to 2 of B at the same time;
                trans 4 of A, which will store in 4 of B. 
                */
                for(int k=i;k<i+4;k++)
                {
                    a=A[k][j],b=A[k][j+1],c=A[k][j+2],d=A[k][j+3],
                    e=A[k][j+4],f=A[k][j+5],g=A[k][j+6],h=A[k][j+7];

                    B[j][k]=a,B[j+1][k]=b,B[j+2][k]=c,B[j+3][k]=d,
                    B[j][k+4]=e,B[j+1][k+4]=f,B[j+2][k+4]=g,B[j+3][k+4]=h;
                }

                for(int k=j;k<j+4;k++)
                {
                    //A read in rol once, B read in row twice
                    a=A[i+4][k],b=A[i+5][k],c=A[i+6][k],d=A[i+7][k],
                    e=B[k][i+4],f=B[k][i+5],g=B[k][i+6],h=B[k][i+7];

                    B[k][i+4]=a,B[k][i+5]=b,B[k][i+6]=c,B[k][i+7]=d,
                    B[k+4][i]=e,B[k+4][i+1]=f,B[k+4][i+2]=g,B[k+4][i+3]=h;
                }
                // for(int k=j+4;k<j+8;k++)
                // {
                //     a=A[i+4][k],b=A[i+5][k],c=A[i+6][k],d=A[i+7][k];

                //     B[k][i+4]=a,B[k][i+5]=b,B[k][i+6]=c,B[k][i+7]=d;
                // }
                for(int k=i+4;k<i+8;k++)
                {
                    a=A[k][j+4],b=A[k][j+5],c=A[k][j+6],d=A[k][j+7];

                    B[j+4][k]=a,B[j+5][k]=b,B[j+6][k]=c,B[j+7][k]=d;
                }
            }
        }
    }
    else{
        //by trial, but i really don't understand ^_^
        //4*4 2454
        //7*7 2349
        //8*8 2294
        //16*16 2565
        int n=N/8*8,m=M/8*8,a,b,c,d,e,f,g,h;
        // for(int i=0;i<n;i+=8)
        // {
        //     for(int j=0;j<m;j+=8)
        //     {
        //         for(int k=i;k<i+8;k++)
        //         {
        //             a=A[k][j],b=A[k][j+1],c=A[k][j+2],d=A[k][j+3],e=A[k][j+4],f=A[k][j+5],g=A[k][j+6],h=A[k][j+7];
        //             B[j][k]=a,B[j+1][k]=b,B[j+2][k]=c,B[j+3][k]=d,B[j+4][k]=e,B[j+5][k]=f,B[j+6][k]=g,B[j+7][k]=h;
        //         }
        //     }
        // }

        //67*61
        //64*56
        for(int j=0;j<m;j+=8)
        {
            for(int k=0;k<n;k++)
            {
                a=A[k][j],b=A[k][j+1],c=A[k][j+2],d=A[k][j+3],e=A[k][j+4],f=A[k][j+5],g=A[k][j+6],h=A[k][j+7];
                B[j][k]=a,B[j+1][k]=b,B[j+2][k]=c,B[j+3][k]=d,B[j+4][k]=e,B[j+5][k]=f,B[j+6][k]=g,B[j+7][k]=h;
            }
        }
        //3*61
        for(int i=n;i<N;i++)
        {
            for(int j=0;j<M;j++)
            B[j][i]=A[i][j];
        }
        //67*5
        for(int i=0;i<n;i++)
        {
            for(int j=m;j<M;j++)
            B[j][i]=A[i][j];
        }
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

