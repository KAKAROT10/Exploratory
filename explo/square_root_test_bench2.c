#include <stdio.h>
#include<string.h>
int main () {

	int i,j, retval=0;
	FILE        *fp;
	fp=fopen("result1.dat","w");

	for(i=1;i<=30;i++){
			float y;
			j=i;
			Square_root(&j,&y);
//			printf("%d %.2f\n",j,y);
			fprintf(fp, "%.2f \n", y);
//			printf("%d %.2f\n",i,y);
		}
	// Save the results to a file


	// Call the function
		fclose(fp);

	// Compare the results file with the golden results
	retval = system("diff --brief -w result1.dat result1.golden.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval=1;
	} else {
		printf("Test passed !\n");
  }

	// Return 0 if the test passed
  return retval;
}
