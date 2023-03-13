#include<iostream>
using namespace std;
int main()
{
	float *p;
	int x=0;
	p=(float *)&x;
	cout<<*p<<endl;
	
<<<<<<< HEAD
=======
	//2^(-126)
	x=0x800000;
	p=(float *)&x;
	cout<<*p<<endl;

>>>>>>> 05858a5b2dbc0416d3820a60e589e432a776d9ee
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
