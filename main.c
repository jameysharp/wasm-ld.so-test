#include <emscripten.h>

int x = 5;

extern int f(void);

int main(int argc, char **argv) {
	return f();
}
