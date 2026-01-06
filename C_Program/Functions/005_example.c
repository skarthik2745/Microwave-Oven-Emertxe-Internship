#include <stdio.h>

void modify(int *num1)
{
	*num1 = *num1 + 1;
}

int main()
{
	int num1 = 10;

	printf("Before Modification\n");
	printf("num1 is %d\n", num1);

	modify(&num1);

	printf("After Modification\n");
	printf("num1 is %d\n", num1);

	return 0;
}


#include <stdio.h>

void modify(int *num1, int *num2)
{
	*num1 = *num1 + 1;
	*num2 = *num2 + 1;
}

int main()
{
	int num1 = 10, num2 = 20;

	printf("Before Modification\n");
	printf("num1 is %d\n", num1);
	printf("num2 is %d\n", num2);

	modify(&num1, &num2);

	printf("After Modification\n");
	printf("num1 is %d\n", num1);
	printf("num2 is %d\n", num2);

	return 0;
}


#include <stdio.h>

void swap(int *num1, int *num2)
{
	/*
	int temp;
	temp = *num1;
	*num1 = *num2;
	*num2 = temp; */
	/*
	*num1 = *num1 + *num2; *num1 = 10 + 20 <<==== 30 ==> num1
	*num2 = *num1 - *num2; *num2 = 30 - 20 <<==== 10 ==> num2
	*num1 = *num1 - *num2; *num1 = 30 - 10 <<==== 20 ==> num1
	*/
	*num1 = *num1 ^ *num2; 
	*num2 = *num1 ^ *num2; 
	*num1 = *num1 ^ *num2; 
}

int main()
{
	int num1 = 10, num2 = 20;

	printf("Before Swap\n");
	printf("num1 is %d\n", num1);
	printf("num2 is %d\n\n", num2);

	swap(&num1, &num2);

	printf("After Swap\n");
	printf("num1 is %d\n", num1);
	printf("num2 is %d\n", num2);

	return 0;
}