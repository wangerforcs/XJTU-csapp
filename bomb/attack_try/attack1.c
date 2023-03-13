#include<stdio.h>
void foo()
{
	long a,*p;
	p=(long *)((char *)&a+0x20);
	*p+=12;
}
int main()
{
	foo();
	printf("first hello world\n");
	printf("second hello world\n");
}
