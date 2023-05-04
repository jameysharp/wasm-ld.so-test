component.wat: link main.wat lib.wat
	./link > $@

main.wasm: lib.so

%.so: %.c
	emcc -sSIDE_MODULE=2 -O2 -o $@ $^

%.wasm: %.c
	emcc -sMAIN_MODULE=2 -O2 -o $@ -L. $^

%.wat: %.so
	wasm-dis --enable-mutable-globals -o $@ $^

%.wat: %.wasm
	wasm-dis --enable-mutable-globals -o $@ $^
