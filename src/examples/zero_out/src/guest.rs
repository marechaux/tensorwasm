
#[allow(clippy::all)]
pub mod interface{
  #[allow(unused_imports)]
  use wit_bindgen_guest_rust::rt::{alloc, vec::Vec, string::String};
  
  pub trait Interface {
    fn compute(input: Vec<i32>,) -> ();
  }
  
  #[doc(hidden)]
  pub unsafe fn call_compute<T: Interface>(arg0: i32,arg1: i32,) {
    let len0 = arg1 as usize;
    T::compute(Vec::from_raw_parts(arg0 as *mut _, len0, len0));
  }
  
}


/// Declares the export of the component's world for the
/// given type.

macro_rules! export_src_guest(($t:ident) => {
  const _: () = {
    
    #[doc(hidden)]
    #[export_name = "interface#compute"]
    unsafe extern "C" fn __export_interface_compute(arg0: i32,arg1: i32,) {
      interface::call_compute::<$t>(arg0,arg1,)
    }
    
  };
  
  #[used]
  #[doc(hidden)]
  #[cfg(target_arch = "wasm32")]
  static __FORCE_SECTION_REF: fn() = __force_section_ref;
  #[doc(hidden)]
  #[cfg(target_arch = "wasm32")]
  fn __force_section_ref() {
    __link_section()
  }
});

#[cfg(target_arch = "wasm32")]
#[link_section = "component-type:src/guest"]
pub static __WIT_BINDGEN_COMPONENT_TYPE: [u8; 59] = [1, 0, 0, 97, 115, 109, 10, 0, 1, 0, 7, 32, 3, 112, 122, 64, 1, 5, 105, 110, 112, 117, 116, 0, 1, 0, 66, 2, 2, 3, 2, 1, 1, 4, 7, 99, 111, 109, 112, 117, 116, 101, 1, 0, 11, 13, 1, 9, 105, 110, 116, 101, 114, 102, 97, 99, 101, 3, 2];

#[inline(never)]
#[doc(hidden)]
#[cfg(target_arch = "wasm32")]
pub fn __link_section() {}
