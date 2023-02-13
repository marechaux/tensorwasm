use std::env;
use std::path::Path;

use anyhow::{Error, Result};

use wit_bindgen_host_wasmtime_rust::wasmtime;
use wit_bindgen_host_wasmtime_rust::wasmtime::{
    component::{Component, Instance, Linker},
    Config, Engine, Store,
};

fn default_config() -> Result<Config> {
    // Create an engine with caching enabled to assist with iteration in this
    // project.
    let mut config = Config::new();
    config.cache_config_load_default()?;
    config.wasm_backtrace_details(wasmtime::WasmBacktraceDetails::Enable);
    config.wasm_component_model(true);
    Ok(config)
}

#[derive(Default)]
struct Context<I> {
    imports: I,
}

#[cxx::bridge(namespace = "tensorwasm")]
mod ffi {
    // Rust types and signatures exposed to C++.
    extern "Rust" {
        fn run();
        fn compute(input: &[i32], output: &mut [i32]);
    }
}

wit_bindgen_host_wasmtime_rust::generate!({
    import: "../examples/zero_out/import.wit",
    default: "../examples/zero_out/interface.wit",
    name: "exports",
});

use import::*;

#[derive(Default)]
pub struct MyImports;

// TODO : remove it later
impl Import for MyImports {
    fn compute(&mut self, list: Vec<i32>) -> Result<()> {
        assert_eq!(list, [1, 2, 3, 4]);
        Ok(())
    }
}

pub fn compute(input: &[i32], output: &mut [i32]) {
    let workspace_folder =
        env::var("BUILD_WORKSPACE_DIRECTORY").expect("BUILD_WORKSPACE_DIRECTORY not set");

    let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/zero_out.wasm");

    let (exports, mut store) = instantiate(
        wasm_path.to_str().unwrap(),
        |linker| import::add_to_linker(linker, |cx| -> &mut MyImports { &mut cx.imports }),
        |store, module, linker| Exports::instantiate(store, module, linker),
    )
    .expect("error1");
    let result = exports.compute(&mut store, input).expect("error2");

    output.copy_from_slice(&result);
}

pub fn run() {
    println!("ceci est un test");
}


fn instantiate<I: Default, T>(
    wasm: &str,
    add_imports: impl FnOnce(&mut Linker<Context<I>>) -> Result<()>,
    mk_exports: impl FnOnce(
        &mut Store<Context<I>>,
        &Component,
        &Linker<Context<I>>,
    ) -> Result<(T, Instance)>,
) -> Result<(T, Store<Context<I>>)> {
    let engine = Engine::new(&default_config()?)?;
    let module = Component::from_file(&engine, wasm)?;

    let mut linker = Linker::new(&engine);
    add_imports(&mut linker)?;

    let mut store = Store::new(
        &engine,
        Context {
            imports: I::default(),
        },
    );
    let (exports, _instance) = mk_exports(&mut store, &module, &linker)?;
    Ok((exports, store))
}
