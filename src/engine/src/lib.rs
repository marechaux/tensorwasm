use anyhow::{Result, Error};
// use wasmtime::*;
use std::env;
use std::path::Path;
// use wit_bindgen_host_wasmtime_rust::wasmtime::{Config, Store, Engine, Module};
// use wit_bindgen_host_wasmtime_rust::wasmtime::component::{Instance, Linker, Component};
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

// use std::fs;
// mod host;

// use host::SrcHost;


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



#[no_mangle]
pub extern "C" fn rust_function() {
    // func().unwrap();
}

#[cxx::bridge(namespace = "tensorwasm")]
mod ffi {
    // Rust types and signatures exposed to C++.
    extern "Rust" {
        fn run();
        fn compute(input: &[i32], output: &mut[i32]);
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

impl Import for MyImports {
    fn compute(&mut self, list: Vec<i32>) -> Result<()> {
        assert_eq!(list, [1, 2, 3, 4]);
        Ok(())
        // TODO : remove it later
    }
}


pub fn compute(input: &[i32], output: &mut[i32]) {
    let workspace_folder = env::var("BUILD_WORKSPACE_DIRECTORY").expect("BUILD_WORKSPACE_DIRECTORY not set");
    // let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/release/zero_out.wasm");
    let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/zero_out.wasm");

    let (exports, mut store) = instantiate(
        wasm_path.to_str().unwrap(),
        |linker| import::add_to_linker(linker, |cx| -> &mut MyImports { &mut cx.imports }),
        |store, module, linker| Exports::instantiate(store, module, linker),
    ).expect("error1");
    let result = exports.compute(&mut store, input).expect("error2");

    output.copy_from_slice(&result);
}

pub fn run() {
    println!("ceci est un test");
    // func().unwrap();
}

// pub fn compute(input: &[i32], output: &mut[i32]) {
//     println!("input : {:?}", input);
//     println!("output : {:?}", output);
//     // output[0] = 12;

//     let mut config = default_config().expect("config creation failed");
//     // config.wasm_backtrace_details(WasmBacktraceDetails::Disable);

//     let workspace_folder = env::var("BUILD_WORKSPACE_DIRECTORY").expect("BUILD_WORKSPACE_DIRECTORY not set");

//     // let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/release/zero_out.wasm");
//     // let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/debug/zero_out.wasi.wasm");
//     let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/debug/zero_out.wasm");
    
//     // let wasm_path = Path::new(&workspace_folder).join("src/examples/zero_out/zero_out.wat");

//     // TODO : https://radu-matei.com/blog/intro-wasm-components/

//     println!("wasm_path : {:?}", wasm_path);

//     let engine = Engine::new(&config).expect("failed to create engine");
//     let module = Component::from_file(&engine, wasm_path).expect("can't create component");
//     let mut linker = Linker::new(&engine);

//     import::add_to_linker(linker, |cx| -> &mut MyImports { &mut cx.imports });


//     let mut store = Store::new(
//         &engine,
//         ()
//     );

//     let (import, _i) =
//         host::SrcHost::instantiate(&mut store, &module, &mut linker)
//         .expect("Unable to run");
//     let resp = import.interface().compute(&mut store, input).expect("Unable to run2");
//     // println!("{}", resp);


//     // let engine = Engine::default();
//     // let module = Module::from_file(&engine, Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/release/zero_out.wasi.wasm")).unwrap();

//     // let mut store = Store::new(&engine, ());

//     // let instance = Instance::new(&mut store, &module, &[]).unwrap();

//     // let component = Component::new(engine, &module).unwrap();
//     // let linker = Linker::new(&engine).unwrap();

//     // let Ok((scr_host, instance)) = SrcHost::instantiate(store, &component, linker);
    
//     // instance.compute(&mut store, output).unwrap();
// }


// pub fn compute(input: &[i32], output: &mut[i32]) {
//     println!("input : {:?}", input);
//     println!("output : {:?}", output);
//     output[0] = 12;
// }

// pub fn compute(input: &[i32], output: &mut[i32]) {
//     println!("input : {:?}", input);
//     println!("output : {:?}", output);


//     let workspace_folder = env::var("BUILD_WORKSPACE_DIRECTORY").unwrap();

//     let engine = Engine::default();
//     let module = Module::from_file(&engine, Path::new(&workspace_folder).join("src/examples/zero_out/target/wasm32-wasi/release/zero_out.wasi.wasm")).unwrap();

//     let mut store = Store::new(&engine, ());

//     let instance = Instance::new(&mut store, &module, &[]).unwrap();

//     let hello = instance.get_typed_func::<Option<ExternRef>, (), _>(&mut store, "compute").unwrap();

//     // And finally we can call the wasm!
//     hello.call(&mut store, Some(ExternRef::new("hllo"))).unwrap();
// }


// pub fn func() -> Result<(), Error> {
//     // Modules can be compiled through either the text or binary format
//     let engine = Engine::default();
//     let wat = r#"
//         (module
//             (import "host" "hello" (func $host_hello (param i32)))

//             (func (export "hello")
//                 i32.const 3
//                 call $host_hello)
//         )
//     "#;
//     let module = Module::new(&engine, wat)?;
    

//     // All wasm objects operate within the context of a "store". Each
//     // `Store` has a type parameter to store host-specific data, which in
//     // this case we're using `4` for.
//     let mut store = Store::new(&engine, 4);
//     let host_hello = Func::wrap(&mut store, |caller: Caller<'_, u32>, param: i32| {
//         println!("Got {} from WebAssembly", param);
//         println!("my host state is: {}", caller.data());
//     });

//     // Instantiation of a module requires specifying its imports and then
//     // afterwards we can fetch exports by name, as well as asserting the
//     // type signature of the function with `get_typed_func`.
//     let instance = Instance::new(&mut store, &module, &[host_hello.into()])?;

//     // TODO : use example here
//     // let hello = instance.get_func(&mut store, "hello").unwrap();

//     // // And finally we can call the wasm!
//     // hello.call(&mut store, &[ExternRef(Some(input)), ExternRef(Some(input))], &[])?;

//     Ok(())

    
// }

// #[cfg(test)]
// mod tests {
//     use super::*;

//     #[test]
//     fn test() {
//         func().unwrap();
//     }
// }


