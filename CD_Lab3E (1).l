%s A B C

%%
<INITIAL>1 BEGIN INITIAL;
<INITIAL>0 BEGIN A;
<INITIAL>\n BEGIN INITIAL; printf("String is not accepted.");

<A>1 BEGIN INITIAL;
<A>0 BEGIN B;
<A>\n BEGIN INITIAL; printf("String is not accepted.");

<B>0 BEGIN C;
<B>1 BEGIN INITIAL;
<B>\n BEGIN INITIAL; printf("String is not accepted.");

<C>0 BEGIN C;
<C>1 BEGIN C;
<C>\n BEGIN INITIAL; printf("String is accepted.");
%%
int yywrap()
{
return 0;
}
int main() {
  printf("Enter a string: ");
  yylex();
  return 0;
}
