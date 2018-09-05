digit	[0-9]
letter [A-Za-z]
int "int"
%{
	int count=0;
%}

%%
	/* match identifier */
{int} {printf("\n%s is a keyword",yytext);}
{letter}({letter}|{digit})*	{printf("%s an identifier",yytext);}
#.* {printf("\n%s is a preprocessor directive",yytext);}

%%
int main(void)	{
	FILE *fp=fopen("ee.c","r");
	yyin=fp;
	yylex();
	printf("number of identifiers = %d\n", count);
	return 0;
}                                                                                                       
