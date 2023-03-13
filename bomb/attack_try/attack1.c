#include<stdio.h>
void foo()
{
	int a;
	long *p;
	p=(long *)((char *)&a+0x1c);
	*p+=12;
}
int main()
{
	foo();
	printf("first hello world\n");
	printf("second hello world\n");
}
