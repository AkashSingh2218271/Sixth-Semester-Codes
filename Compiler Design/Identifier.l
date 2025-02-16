%{
    #include <stdio.h>
%}

%%
// Ignore spaces and newlines
[\t\n ] {/* Do nothing */}  
[a-zA-Z_][a-zA-Z0-9_]* {printf("It is a valid identifier\n");}
[^a-zA-Z_] {printf("It is not a valid identifier\n");}
%%

int main() {
    printf("Enter string you want to check ");
    yylex();

    return 0;
}

int yywrap() {
    return 1;
}


