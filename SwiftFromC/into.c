#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int sum(int a, int b);
char* string_from_swift();
int swift_strlen(char *str);
void swift_printstr(char *str);


int main() {
    printf("Hello, World!\n%d times\n", sum(34, 35)); 
    char *swft_str = string_from_swift();
    char *msg = (char*) malloc(1024);
    sprintf(msg, "\"%s\"\nswift says it's %d chars long\nwhile I say it's %lu chars long\n", swft_str, swift_strlen(swft_str), strlen(swft_str));
    
    swift_printstr(msg);
    swift_printstr(string_from_swift());
    free(swft_str);
    free(msg);

    return 0;
}