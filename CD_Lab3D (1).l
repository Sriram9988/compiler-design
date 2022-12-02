%option noyywrap
%{
#include<stdio.h>
%}
%%
[0-9]*00 {printf("The string is accepted");}
.* {printf("The string is rejected");}
%%
int main()
{
printf("\nEnter the binary string : ");
yylex();
return 0;
}
