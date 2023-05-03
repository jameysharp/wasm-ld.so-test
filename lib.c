#include <emscripten.h>

extern int x;

EMSCRIPTEN_KEEPALIVE int f(void) {
	return x;
}
