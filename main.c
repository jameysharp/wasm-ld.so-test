#include <stdio.h>

int x = 5;

extern int f(void);

int main(void) {
	puts("hello from main");
	return f();
}
