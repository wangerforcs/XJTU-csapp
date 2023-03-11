#include<iostream>
using namespace std;
int highbit(int x)
{
	int sum=0,mask=0;
    x=(x>>31)^x;
    mask=!!(x>>16)<<4;
    x>>=mask;
    sum+=mask;
    mask=!!(x>>8)<<3;
    x>>=mask;
    sum+=mask;
    mask=!!(x>>4)<<2;
    x>>=mask;
    sum+=mask;
    mask=!!(x>>2)<<1;
    x>>=mask;
    sum+=mask;
    mask=!!(x>>1);
    x>>=mask;
    sum+=mask;
    sum+=x;
    return sum;
}
int main()
{
	cout<<highbit(0x10f0f00f)<<endl;	
}
