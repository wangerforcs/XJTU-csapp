#include<iostream>
using namespace std;
int main()
{
	float *p;
	int x=0;
	p=(float *)&x;
	cout<<*p<<endl;
	
	//2^(-126)
	x=0x800000;
	p=(float *)&x;
	cout<<*p<<endl;

	x=0x3f800000;
	p=(float *)&x;
	cout<<*p<<endl;
	
	x=0x40400000;
	p=(float *)&x;
	cout<<*p<<endl;
	
	x=0x7f800000;
	p=(float *)&x;
	cout<<*p<<endl;
	
	x=0x7f800001;
	p=(float *)&x;
	cout<<*p<<endl;
	return 0;
}
