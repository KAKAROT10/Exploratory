#include <stdio.h>

int main(){
//	char s[10];
//	scanf("%s", s);
//	int i,arr[10];
//	for(i=0;i<10;i++) arr[i] = (int)s[i]-48;
//	for(i=0;i<10;i++) printf("%d", arr[i]);
//	printf("%d", (int)s[0]-48);
	char s[10];
	scanf("%s", s);
	printf("%d", ((int)s[0]-48)*10 + ((int)s[1]-48));
	return 0;
}
