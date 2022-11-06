To build it : 
```
cargo install --git https://github.com/bytecodealliance/wit-bindgen wit-component
RUSTFLAGS="-Clink-args=--export-table" cargo build --target=wasm32-unknown-unknown
wit-component target/wasm32-unknown-unknown/debug/zero_out.wasm
