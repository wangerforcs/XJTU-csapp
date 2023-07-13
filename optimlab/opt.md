### 1.31
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0,ans5=0,ans6=0,ans7=0,ans8=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow5=pow4*x,pow6=pow2*pow4,pow7=pow3*pow4,pow8=pow4*pow4,
    pow12=pow8*pow4,pow16=pow8*pow8,pow20=pow16*pow4,pow24=pow12*pow12,
    pow28=pow24*pow4,pow32=pow16*pow16,pow64=pow32*pow32;
    for(int i=degree;i>=64;)
    {
        ans1=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans2=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans3=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans4=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans5=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans6=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans7=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans8=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        i-=8;
        ans=ans*pow64+ans1*pow32*pow24+ans2*pow24*pow24+ans3*pow16*pow24+ans4*pow32+ans5*pow24+ans6*pow16+ans7*pow8+ans8;
    }
    for(int i=degree%64;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```


### cpe 1.40
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0,ans5=0,ans6=0,ans7=0,ans8=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow5=pow4*x,pow6=pow2*pow4,pow7=pow3*pow4,pow8=pow4*pow4,
    pow12=pow8*pow4,pow16=pow8*pow8,pow20=pow16*pow4,pow24=pow12*pow12,
    pow28=pow24*pow4,pow32=pow16*pow16;

    for(int i=degree;i>=32;i-=32)
    {
        ans1=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans2=a[i-8]*pow8+a[i-9]*pow7+a[i-10]*pow6+a[i-11]*pow5+a[i-12]*pow4+a[i-13]*pow3+a[i-14]*pow2+a[i-15]*x;
        ans3=a[i-16]*pow8+a[i-17]*pow7+a[i-18]*pow6+a[i-19]*pow5+a[i-20]*pow4+a[i-21]*pow3+a[i-22]*pow2+a[i-23]*x;
        ans4=a[i-24]*pow8+a[i-25]*pow7+a[i-26]*pow6+a[i-27]*pow5+a[i-28]*pow4+a[i-29]*pow3+a[i-30]*pow2+a[i-31]*x;
        ans=ans*pow32+ans1*pow24+ans2*pow16+ans3*pow8+ans4;
    }
    for(int i=degree%32;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```


### cpe 1.59
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow8=pow4*pow4,pow12=pow8*pow4,pow16=pow8*pow8;
    for(int i=degree;i>=16;i-=16)
    {
        ans1=a[i]*pow4+a[i-1]*pow3+a[i-2]*pow2+a[i-3]*x;
        ans2=a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans3=a[i-8]*pow4+a[i-9]*pow3+a[i-10]*pow2+a[i-11]*x;
        ans4=a[i-12]*pow4+a[i-13]*pow3+a[i-14]*pow2+a[i-15]*x;
        ans=ans*pow16+ans1*pow12+ans2*pow8+ans3*pow4+ans4;
    }
    for(int i=degree%16;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```
### cpe 1.56
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0,ans5=0,ans6=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow8=pow4*pow4,
    pow12=pow8*pow4,pow16=pow8*pow8,pow20=pow16*pow4,pow24=pow12*pow12,
    pow28=pow24*pow4,pow32=pow16*pow16;

    for(int i=degree;i>=24;i-=24)
    {
        ans1=a[i]*pow4+a[i-1]*pow3+a[i-2]*pow2+a[i-3]*x;
        ans2=a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans3=a[i-8]*pow4+a[i-9]*pow3+a[i-10]*pow2+a[i-11]*x;
        ans4=a[i-12]*pow4+a[i-13]*pow3+a[i-14]*pow2+a[i-15]*x;
        ans5=a[i-16]*pow4+a[i-17]*pow3+a[i-18]*pow2+a[i-19]*x;
        ans6=a[i-20]*pow4+a[i-21]*pow3+a[i-22]*pow2+a[i-23]*x;
        ans=ans*pow24+ans1*pow20+ans2*pow16+ans3*pow12+ans4*pow8+ans5*pow4+ans6;
    }
    for(int i=degree%24;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```

### cpe 1.53
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0,ans5=0,ans6=0,ans7=0,ans8=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow8=pow4*pow4,
    pow12=pow8*pow4,pow16=pow8*pow8,pow20=pow16*pow4,pow24=pow12*pow12,
    pow28=pow24*pow4,pow32=pow16*pow16;

    for(int i=degree;i>=32;i-=32)
    {
        ans1=a[i]*pow4+a[i-1]*pow3+a[i-2]*pow2+a[i-3]*x;
        ans2=a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans3=a[i-8]*pow4+a[i-9]*pow3+a[i-10]*pow2+a[i-11]*x;
        ans4=a[i-12]*pow4+a[i-13]*pow3+a[i-14]*pow2+a[i-15]*x;
        ans5=a[i-16]*pow4+a[i-17]*pow3+a[i-18]*pow2+a[i-19]*x;
        ans6=a[i-20]*pow4+a[i-21]*pow3+a[i-22]*pow2+a[i-23]*x;
        ans7=a[i-24]*pow4+a[i-25]*pow3+a[i-26]*pow2+a[i-27]*x;
        ans8=a[i-28]*pow4+a[i-29]*pow3+a[i-30]*pow2+a[i-31]*x;
        ans=ans*pow32+ans1*pow28+ans2*pow24+ans3*pow20+ans4*pow16+ans5*pow12+ans6*pow8+ans7*pow4+ans8;
    }
    for(int i=degree%32;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```

### cpe 1.77
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0,pow2=x*x,pow3=pow2*x,pow4=pow3*x,pow8=pow4*pow4;
    for(int i=degree;i>=8;i-=8)
    {
        ans1=a[i]*pow4+a[i-1]*pow3+a[i-2]*pow2+a[i-3]*x;
        ans2=a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans=(ans*pow8)+ans1*pow4+ans2;
    }
    for(int i=degree%8;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```

### cpe 1.82
```cpp
    double ans=0,ans1=0,ans2=0,ans3=0,ans4=0;
    double pow2=x*x,pow3=pow2*x,pow4=pow2*pow2,pow5=pow4*x,pow6=pow5*x,pow7=pow6*x,pow8=pow4*pow4,pow12=pow8*pow4,pow16=pow8*pow8;
    for(int i=degree;i>=16;i-=16)
    {
        ans1=a[i]*pow8+a[i-1]*pow7+a[i-2]*pow6+a[i-3]*pow5+a[i-4]*pow4+a[i-5]*pow3+a[i-6]*pow2+a[i-7]*x;
        ans2=a[i-8]*pow8+a[i-9]*pow7+a[i-10]*pow6+a[i-11]*pow5+a[i-12]*pow4+a[i-13]*pow3+a[i-14]*pow2+a[i-15]*x;
        ans=ans*pow16+ans1*pow8+ans2;
    }
    for(int i=degree%16;i>=1;i--)
    ans=(ans+a[i])*x;
    ans+=a[0];
    *result=ans;
```


### 0.98
```cpp
    double remain=0,ans0=0,ans1=0,ans2=0,ans3=0,ans4=0,ans5=0,ans6=0,ans7=0;
    double pnx[16]={1},ans[8];int mulnum;
    for(int i=1;i<=15;i++)
    pnx[i]=pnx[i-1]*x;
    for(long i=degree;i>=8;i-=8)
    {
        ans0=ans0*pnx[8]+a[i];
        ans1=ans1*pnx[8]+a[i-1];
        ans2=ans2*pnx[8]+a[i-2];
        ans3=ans3*pnx[8]+a[i-3];
        ans4=ans4*pnx[8]+a[i-4];
        ans5=ans5*pnx[8]+a[i-5];
        ans6=ans6*pnx[8]+a[i-6];
        ans7=ans7*pnx[8]+a[i-7];
    }
    ans[0]=ans0,ans[1]=ans1,ans[2]=ans2,ans[3]=ans3,ans[4]=ans4,ans[5]=ans5,ans[6]=ans6,ans[7]=ans7;
    for(int i=degree%8;i>=0;i--)
    remain=remain*x+a[i];
    mulnum=degree%8+8;
    for(int i=0;i<=7;i++)
    ans[i]*=pnx[mulnum-i],remain+=ans[i];
    *result=remain;
```