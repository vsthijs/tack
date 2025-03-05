#include <assert.h>
#include <stdio.h>

// TODO: add tests for intrinsics

extern int test(int, int);

int main() {
	int result = test(3, 2);
	printf("%x & %x = %x (%x)\n", 3, 2, result, 3 & 2);
}
