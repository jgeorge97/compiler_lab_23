%{

    #include<stdio.h>

    int valid=1;

%}

%token digit letter

%%

start : letter s

s :     letter s

      | digit s

      |

      ;

%%

int yyerror()

{

    printf("\nNot an Identifier!\n");

    valid=0;

    return 0;

}

int main()

{

    printf("\nEnter Name of Identifier: ");

    yyparse();

    if(valid)

    {

        printf("\nIt is an identifier!\n");

    }

}
