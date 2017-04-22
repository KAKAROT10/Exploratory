#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int duplex(int x){
	char s[20];
	int z=x,n=0;
	while(z!=0){
		z/=10;
		n++;
	}
	printf("hey1");
	itoa(x, s, n);
	printf("hey1");
	int i,y=0;
	for(i=0;s[i]!='x';i++) y+= 2*atoi(s[i])*atoi(s[n-i-1]);
	if(n%2==0) y+= atoi(s[n/2])*atoi(s[n/2]);
	printf("hey1");
	return y;
}

int main(){
	int n;
	scanf("%d",&n);
	int ret = duplex(n);
	printf("%d", ret);
}
