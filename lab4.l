%{
  char symbolTable[1024][1024];
%}
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short printf("Is a keyword");
[a-zA-Z]([a-zA-Z]|[0-9])* printf("Is an identifier");
[0-9]+ printf("Is an integer");
[<|>|<=|>=|==|!=]* printf("Is a Relational Operator");
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] /*  */
.* printf("Invalid Expression");
%%

int yywrap()
{
return 0;
}

main() {
  printf("Enter a string: ");
  yylex();
}
