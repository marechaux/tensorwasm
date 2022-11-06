

#[cxx::bridge]
mod ffi {
    // Rust types and signatures exposed to C++.
    extern "Rust" {
        fn run();
    }
}

pub fn run() {
    func().unwrap();
}
