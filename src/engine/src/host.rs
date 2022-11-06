use wit_bindgen_host_wasmtime_rust::{wasmtime, anyhow};


#[allow(clippy::all)]
pub mod interface{
  #[allow(unused_imports)]
  use wit_bindgen_host_wasmtime_rust::{wasmtime, anyhow};
  
  pub struct Interface {
    compute: wasmtime::component::Func,
  }
  impl Interface {
    
    pub fn new(
    exports: &mut wasmtime::component::ExportInstance<'_, '_>,
    ) -> anyhow::Result<Interface> {
      let compute = *exports.typed_func::<(&[i32], ), ()>("compute")?.func();
      Ok(Interface {
        compute,
      })
    }
    pub  fn compute<S: wasmtime::AsContextMut>(&self, mut store: S, arg0: &[i32],) -> anyhow::Result<()> {
      let callee = unsafe {
        wasmtime::component::TypedFunc::<(&[i32], ), ()>::new_unchecked(self.compute)
      };
      let () = callee.call(store.as_context_mut(), (arg0, ))?;
      callee.post_return(store.as_context_mut())?;
      Ok(())
    }
  }
  
}

pub struct SrcHost {
  interface: interface::Interface,
}

impl SrcHost{
  /// Instantiates the provided `module` using the specified
  /// parameters, wrapping up the result in a structure that
  /// translates between wasm and the host.
  pub  fn instantiate<T >(
  mut store: impl wasmtime::AsContextMut<Data = T>,
  component: &wasmtime::component::Component,
  linker: &wasmtime::component::Linker<T>,
  ) -> anyhow::Result<(Self, wasmtime::component::Instance)> {
    let instance = linker.instantiate(&mut store, component)?;
    Ok((Self::new(store, &instance)?, instance))
  }
  
  /// Low-level creation wrapper for wrapping up the exports
  /// of the `instance` provided in this structure of wasm
  /// exports.
  ///
  /// This function will extract exports from the `instance`
  /// defined within `store` and wrap them all up in the
  /// returned structure which can be used to interact with
  /// the wasm module.
  pub fn new(
  mut store: impl wasmtime::AsContextMut,
  instance: &wasmtime::component::Instance,
  ) -> anyhow::Result<Self> {
    let mut store = store.as_context_mut();
    let mut exports = instance.exports(&mut store);
    let mut exports = exports.root();
    
    let interface = interface::Interface::new(
    &mut exports.instance("interface")
    .ok_or_else(|| anyhow::anyhow!("exported instance `interface` not present"))?
    )?;
    Ok(SrcHost {
      interface,
    })
  }
  
  pub fn interface(&self) -> &interface::Interface {
    &self.interface
  }
}
