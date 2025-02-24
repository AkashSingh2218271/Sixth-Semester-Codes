%{
    #include <stdio.h>
    int vowel_count = 0, consonant_count = 0;
%} 

%%
[a|e|i|o|u|A|E|I|O|U] {vowel_count++;}
" "|\n|\t {consonant_count;}
[^a|e|i|o|u|A|E|I|O|U] {consonant_count++;}
%%

int main() {
    // Extern file *yyin, *yyout;
    yyin = fopen("vowelAndCons.txt", "r");
    yylex();
    printf("Number of vowel in file is %d\n", vowel_count);
    printf("Number of consonant in file is %d\n", consonant_count);

    return 0;
}

int yywrap() {
    return 1;
}