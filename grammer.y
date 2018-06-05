%{
#include <stdio.h>
void yyerror(char *s);
int yylex(void);
void yywrap(void);
%}

%start prog


%%

prog: | 'h'; 
%%

void yyerror(char * s) {
}
void yywrap() {

}
