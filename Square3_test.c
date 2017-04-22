#include <stdio.h>

int main () {

	int i, retval=0;
	double tmp;
	FILE        *fp;
	fp=fopen("result.dat","w");

	for(i=0;i<30;i++){
			tmp = (double)i+1;
			double y, *x;
			x = &tmp;
			loop_functions(x, &y);
			fprintf(fp, "%f \n", y);
		}
	// Save the results to a file


	// Call the function
		fclose(fp);

	// Compare the results file with the golden results
	retval = system("diff --brief -w result.dat result.golden.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval=1;
	} else {
		printf("Test passed !\n");
  }

	// Return 0 if the test passed
  return retval;
}
