#include "../Libraries/calc.h"
#include <stdio.h>

int main (int argc, char* argv[])
{

	if(argc < 2)
	{
		//printf("Type name of file with expression\n");
		printf("Usage: ./calc.out <file-name>\n");
		return 1;
	}

	// No constructor is required, better use function
	Calc calc(argv[1]);


	double result = calc.GetG ();

	if(calc.error)
		printf ("%s\nWrong expression. Don't use spaces!\n", calc.symbols);
	else
		printf ("Result = %lg\n", result);

	return 0;
}
