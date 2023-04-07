#include<stdio.h>
#include<iostream>
using namespace std;
int main()
{
	int a=3,b=2;
	a=a/b;
	float *p=(float*)&a;
	printf("%d %f %.60f %f",a,a,a,*p);
	std::cout<<" "<<*p<<endl;
}
