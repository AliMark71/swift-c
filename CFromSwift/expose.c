#include <stdio.h>
#include <string.h>

int sum(int a, int b) {
    return a + b;
}

char* string_from_c() {
    return "🏎️ Hello, from C!";
}

int c_strlen(char *str) {
    return strlen(str);
}

void c_printstr(char *str) {
    printf("[31;1m...C HEAD...[0m\n%s\n", str);
}