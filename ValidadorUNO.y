%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int yylex();
void yyerror (char const *);
int errorCount = 0;
extern int lineNumber;
%}
%union
 {
 char * str;
 }
%define parse.error verbose
%token EXAMPLE

%start S
%%
S : EXAMPLE
    ;
%%

int main() {
	int result;

    if ((result = yyparse()) == 0) {   
        printf("No syntax errors\n");
    } else {
        printf("\nFound %d syntax errors\n",errorCount);
    }
	return 0;
}
void yyerror (char const *message) { 
	errorCount++;
    fprintf(stderr,"Jugada incorrecta. %s en la linea %d \n",message,lineNumber);

    exit(0);
}
