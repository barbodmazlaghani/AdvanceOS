#include <stdio.h>

int main() {
    int c, wc = 0, in_word = 0;

    while ((c = getchar()) != EOF) {
        if (c == ' ' || c == '\n' || c == '\t') {
            in_word = 0;
        } else if (in_word == 0) {
            in_word = 1;
            ++wc;
        }
    }
    printf("%d\n", wc);
    return 0;
}
