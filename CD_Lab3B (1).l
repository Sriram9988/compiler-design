%{ 
	#include<stdio.h> 
%} 
%% 
"a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U" {printf("is a VOWEL\n");} 
[a-zA-z] {printf("Is a CONSONENT\n");} 
stop {return 0;} 
%% 
int yywrap() 
{ 
	return 0; 
} 
int main()
{
	printf("Enter String\n"); 
	yylex(); 
}
