#include<stdio.h>
#include<math.h>
#include<string.h>
dup(long long int x)
{x = x*10;
long long int z=0, i, arr[20], y=x, cou1=0;
	while(y!=0){
		arr[cou1] = y%10;
		cou1++;
		y/=10;
	}
	
	for(i=0;i<cou1/2;i++){
		z = z+(2*(arr[cou1-i-1])*(arr[i]));
	}
	if(cou1%2 == 1) z+=(arr[(cou1/2)]*arr[(cou1/2)]);

	return z;
}
void Square_root(int *num ,float *ans)
{
int size_of_a,i;
int temp;
int len = 0;
int a = 0;
int k = 1;
int remy[20];
char h[100];
int n = *num;
while(n!=0)
{n = n/10;
len++;
}
int len2 = len;
while(*num!=0)
{h[len2-1] = (*num%10)+48;
*num = (*num)/10;
len2--;
}
h[len] = '0';
h[len+1] = '0';
h[len+2] = '0';
h[len+3] = '0';
if(len%2==0)
     {
	 size_of_a = len/2;
	 temp = ((int)h[0]-48)*10 +(int)h[1]-48;
	 for(i=1;i<=9;i++)                    //determine first digit of answer;
         {if(i*i>temp)
             {a = i-1;
             break;}
         else
             a = i;
         } 
     k = k+2;
}
else
     {size_of_a = (len+1)/2;
     temp = (int)h[0]-48;
 //    printf("%d\n",temp);
     for(i=1;i<=4;i++)                   //determine first digit of answer
         {if(i*i>temp)
             {a = i-1;
             break;}}
     k = k+1;
}    
int t = 1;                                   //size of answer
int divisor = 2*a;                           //fixed divisor
int remainder = temp-(a*a);
remy[t-1] = remainder;
temp = remainder*10+(int)h[k-1]-48;
int quotient = temp/divisor;
if(quotient>9)
     quotient = 9;
a = a*10+quotient;                           //first 2 digits of answer
t = t+1;
remainder = temp-divisor*quotient;
remy[t-1] = remainder;
k = k+1;
while(k<=len+4)                              //answer after 2 digits
     {int new_temp = remy[t-1]*10+(int)h[k-1]-48;
     int temp2 = new_temp - dup(a);
     if(temp2<0)                             //exceptions
         {int vr1 = a/10;
         a=a-1;
         int vr2 = a/10;
         if(vr1==vr2)
             {remainder = remainder + divisor;
             remy[t-1] = remainder;
			 }
		 else
		     {a =vr2;
		     remy[t-2]+=divisor;
		     k = k-1;
			 t = t-1;               
		     }
		 }
	 else	 
		 {quotient = temp2/divisor;
		 if(quotient>9)
		      quotient = 9;
		 a = a*10 + quotient;
		 remainder = temp2-divisor*quotient;
		 remy[t] =remainder;
		 k = k+1;
		 t = t+1;}
		  }
*ans=a;
for(i=0;i<t-size_of_a;i++)
*ans=*ans/10;
	}
