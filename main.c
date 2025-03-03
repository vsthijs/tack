#include <stdio.h>

extern int sub(int, int);
extern int mynum();

int main() {
    printf("69 34 -\n-> %d\n", sub(69, 34));
    printf("mynum -> %d\n", mynum());
}
