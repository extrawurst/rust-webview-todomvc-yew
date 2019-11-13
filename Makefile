
build-wasm:
	cd todomvc && cargo web build --release
	cp todomvc/target/wasm32-unknown-unknown/release/todomvc.js static/
	cp todomvc/target/wasm32-unknown-unknown/release/todomvc.wasm static/
	cp todomvc/static/index.html static/

run: build-wasm
	cargo run --release
