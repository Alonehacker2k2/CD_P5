%{
#include<stdio.h>
%}
%%
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("identifier\n");}
^[0-9]+ {printf("not an identifier\n");}
.|\n;
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
return 0;
}

