#include <emscripten.h>
#include <stdio.h>

extern int x;

EMSCRIPTEN_KEEPALIVE int f(void) {
	puts("hello from f");
	return x;
}
