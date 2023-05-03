main.wasm: lib.so

%.so: %.c
	emcc -sSIDE_MODULE=2 -O2 -o $@ $^

%.wasm: %.c
	emcc -sMAIN_MODULE=2 -O2 -o $@ -L. $^
