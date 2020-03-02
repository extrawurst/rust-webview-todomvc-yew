
install:
	cargo install wasm-bindgen-cli

build-wasm-websys:
	cd todomvc-websys \
		&& cargo build --release --target wasm32-unknown-unknown \
		&& wasm-bindgen --target web --no-typescript --out-dir ../static/ --out-name wasm target/wasm32-unknown-unknown/release/todomvc.wasm
	mv static/wasm_bg.wasm static/todomvc.wasm
	mv static/wasm.js static/todomvc.js

build-wasm:
	cd todomvc \
		&& cargo web build --release --target wasm32-unknown-unknown
	cp todomvc/target/wasm32-unknown-unknown/release/todomvc.js static/
	cp todomvc/target/wasm32-unknown-unknown/release/todomvc.wasm static/
	cp todomvc/static/index.html static/

run-websys: build-wasm-websys
	cargo run --release

run: build-wasm
	cargo run --release
