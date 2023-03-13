#include<stdio.h>
#include<string.h>
int main()
{
	char input[8];
	char passwd[8]="wanger";
	while(1)
	{
		printf("input your password:");
		gets(input);
		if(strcmp(passwd,input)==0)
		{
			break;
		}
		else printf("sorry, your password is wrong\n");
	}
	printf("you have entered");
	return 0;
}
