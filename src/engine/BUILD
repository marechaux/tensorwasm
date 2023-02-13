load("@rules_rust//rust:defs.bzl", "rust_static_library")
load("//tools/cxx:rust_cxx_bridge.bzl", "rust_cxx_bridge")

package(default_visibility = ["//visibility:public"])

rust_static_library(
    name = "hello_world_lib",
    srcs = ["src/lib.rs"],
    deps = [
        "//third_party/raze:wit_bindgen_host_wasmtime_rust",
        "//third_party/raze:anyhow",
        "//third_party/raze:cxx",
    ],
    proc_macro_deps=["//third_party/raze:wit_bindgen_host_wasmtime_rust_macro"],
    compile_data=["//src/examples/zero_out:import.wit", "//src/examples/zero_out:interface.wit"],
    edition = "2021",
)

rust_cxx_bridge(
    name = "bridge",
    src = "src/lib.rs",
    deps = [
        ":hello_world_lib"
    ],
)
