#include <stdio.h>

int main()
{
	int array_org[5] = {1, 2, 3, 4, 5};
	int array_bak[5];
	int index;

	array_bak = array_org;

	if (array_bak == array_org)
	{
		printf("Copied\n");
	}

	return 0;
}


#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;
	int no_of_elements;
	
	for (index = 0; index < 9; index++)
	{
		printf("Index %d has Element %d\n", index, num_array[index]);
	} 

	return 0;
}
total memory = no_of_elements * sizeof(data_type);
no_of_elements = total memory / sizeof(data_type);
no_of_elements = sizeof(array) / sizeof(data_type);

#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;
	int no_of_elements = sizeof(num_array) / sizeof (int);
	
	for (index = 0; index < no_of_elements; index++)
	{
		printf("[%d] = %d\n", index, num_array[index]);
	} 

	return 0;
}

#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;
	int no_of_elements = sizeof(num_array) / sizeof (int);
	
	for (index = -1; index < no_of_elements - 1; index++)
	{
		printf("[%d] = %d\n", index + 1, num_array[index + 1]);
	} 

	return 0;
}


#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;

	for (index = 0; index < sizeof(num_array) / sizeof (int); index++)
	{
		printf("[%d] = %d\n", index, num_array[index ]);
	} 

	return 0;
}


#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;

	for (index = -1; index < (sizeof(num_array) / sizeof (int)) - 1; index++)
	{
		printf("[%d] = %d\n", index + 1, num_array[index + 1]);
	} 

	return 0;
}

index < ((sizeof(num_array) / sizeof (int)) - 1)
signed < ((unsigned (36) / unsigned (4) - 1))
signed (-1) < (unsigned (9) - signed (1))
signed (-1) < (unsigned (9) - signed->unsigned (1))
signed (-1) < (unsigned (9) - unsigned (1))
signed (-1) < unsigned (8)
signed->unsigned (-1) < unsigned (8)
unsigned (BIG_VALUE) < unsigned (8) ===> False => Not enter the loop

#include <stdio.h>

int main()
{
	int num_array[] = {1, 8, 6, 3, 45, 78, 20, 30, 25}; 
	int index;

	for (index = -1; index < (sigmed)(sizeof(num_array) / sizeof (int)) - 1; index++)
	{
		printf("[%d] = %d\n", index + 1, num_array[index + 1]);
	} 

	return 0;
}
