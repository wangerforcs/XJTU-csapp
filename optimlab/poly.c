#include "poly.h"
#include <time.h>

void poly_optim(const double a[], double x, long degree, double *result) {
    double pnx[9]={1},ans[8]={0},remain=0,mul=0;
    for(int i=1;i<=8;i++)
    pnx[i]=pnx[i-1]*x;
    for(long i=degree;i>=8;i-=8)
    {
        ans[0]=ans[0]*pnx[8]+a[i];
        ans[1]=ans[1]*pnx[8]+a[i-1];
        ans[2]=ans[2]*pnx[8]+a[i-2];
        ans[3]=ans[3]*pnx[8]+a[i-3];
        ans[4]=ans[4]*pnx[8]+a[i-4];
        ans[5]=ans[5]*pnx[8]+a[i-5];
        ans[6]=ans[6]*pnx[8]+a[i-6];
        ans[7]=ans[7]*pnx[8]+a[i-7];
    }
    for(int i=degree%8;i>=0;i--)
    remain=remain*x+a[i];
    mul=pnx[degree%8+1];
    for(int i=0;i<=7;i++)
    ans[i]*=pnx[7-i]*mul,remain+=ans[i];
    *result=remain;
}

void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time) {
    // your code here
    int iters=100;
    double sumt=0.0,ans=0.0;
    for(int i=0;i<iters;i++)
    {
        struct timespec begin,end;
        clock_gettime(CLOCK_REALTIME, &begin);
        poly(a, x, degree, &ans);
        clock_gettime(CLOCK_REALTIME, &end);
        sumt+=end.tv_nsec-begin.tv_nsec;
    }
    *time=sumt/iters;
}