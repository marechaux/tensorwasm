RUSTFLAGS="-Clink-args=--export-table" cargo build --target=wasm32-unknown-unknown
wit-component target/wasm32-unknown-unknown/debug/zero_out.wasm
