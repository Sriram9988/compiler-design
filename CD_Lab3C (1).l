%option noyywrap
%{
  #include<stdio.h>
  int c;
%}
%%
\n    {c++;}
stop {return 0;}
%%
int main()
{
  printf("enter string in lines:\n");
  yylex();
  printf("Number of lines : %d\n",c);
  return 0;
}
