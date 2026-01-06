#include <stdio.h>

int main()
{
	if (sizeof(char *) == sizeof(long long *))
	{
		printf("Yes its Equal\n");
	}
#if 1

	printf("size of char * = %zu\n", sizeof (char *));
	printf("size of int * = %zu\n", sizeof (int *));
	printf("size of float * = %zu\n", sizeof (float *));
	printf("size of double * = %zu\n", sizeof (double *));
	printf("size of long int * = %zu\n", sizeof (long int *));
	printf("size of long long int * = %zu\n", sizeof (long long int *));
#endif
	return 0;
}

