#include <assert.h>
#include <stdio.h>

// TODO: add tests for intrinsics

extern int eq(int, int);
extern int lt(int, int);
extern int gt(int, int);
extern int lte(int, int);
extern int gte(int, int);
extern int neq(int, int);
extern int add(int, int);
extern int sub(int, int);
extern int mul(int, int);
extern int div(int, int);
extern int and (int, int);
extern int or (int, int);
extern int shl(int, int);
extern int shr(int, int);

int main() {
    assert(eq(1, 1));
    assert(!eq(0, 1));

    assert(!lt(1, 1));
    assert(lt(0, 2));

    assert(!gt(1, 1));
    assert(!gt(0, 2));
}
