#include<stdio.h>
int bitcoutn(int mask)
{
	mask=((mask&0xaaaaaaaa)>>1)+(mask&0x55555555);
	mask=((mask&0xcccccccc)>>2)+(mask&0x33333333);
	mask=((mask&0xf0f0f0f0)>>4)+(mask&0x0f0f0f0f);
	mask=((mask&0xff00ff00)>>8)+(mask&0x00ff00ff);
	mask=((mask&0xffff0000)>>16)+(mask&0x0000ffff);
	return mask;
}
int main()
{
	int x=0x7fffffff;
	printf("%d\n",bitcoutn(x));

}
