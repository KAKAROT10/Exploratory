#include <stdio.h>

int duplex(long long int x){
	int z=0, i, arr[20], cou1=0;
	long long int y=x;
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

void Square3(double *c, double *ans){


	long long int x = *c*100;
	long long int y = x;
	int z=0, i, arr[20], cou1=0;
	while(y!=0){
		arr[cou1] = y%10;
		cou1++;
		y/=10;
	}
	
	long long int s=0,sqr=0,d=0,f=1;
	s+=(duplex(arr[0])%10);
	sqr+=s;	

	for(i=0;i<cou1-1;i++){
		f*=10;
		s=d;
		s=s+((duplex((x%f))/10)+(duplex((x%(10*f)))%10));
		sqr+=((s%10)*f);

		d=s/10;
	}
	
	f*=10;
	int g=1;
	
	for(i=0;i<cou1-1;i++){
		s=d;
		s=s+((duplex((x/g))/10)+(duplex((x/(10*g)))%10));
		g*=10;
		sqr+=((s%10)*f);

		f*=10;
		d=s/10;
	}

	d+=(duplex(arr[cou1-1])/10);
	sqr+=(d*f);	
	*ans = (double)sqr/10000;
}
