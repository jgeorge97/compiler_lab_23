%{

    #include<stdio.h>

    int flag=0;

   

%}

%token NUMBER



%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

%%

ArithmeticExpression: E{

         printf("\nResult=%d\n",$$);

         return 0;

        };

E:E'+'E {$$=$1+$3;}

 |E'-'E {$$=$1-$3;}

 |E'*'E {$$=$1*$3;}

 |E'/'E {$$=$1/$3;}

 |E'%'E {$$=$1%$3;}

 |'('E')' {$$=$2;}

 | NUMBER {$$=$1;}

;

%%



void main()

{

   printf("\nEnter Any Arithmetic Expression:\n");

   yyparse();

  if(flag==0)

   printf("\nArithmetic expression is Valid\n\n");

 

}

void yyerror()

{

   printf("\nArithmetic expression is Invalid\n\n");

   flag=1;

}
