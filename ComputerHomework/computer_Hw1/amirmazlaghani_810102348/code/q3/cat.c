#include <stdio.h>

int main(int argc, char *argv[]) {
    FILE *file;
    int c;

    file = fopen(argv[1], "r");
    if (file) {
        while ((c = getc(file)) != EOF)
            putchar(c);
        fclose(file);
    }
    return 0;
}
