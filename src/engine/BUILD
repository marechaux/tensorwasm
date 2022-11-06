load("@rules_rust//rust:defs.bzl", "rust_library", "rust_binary", "rust_static_library")
load("//tools/cxx:rust_cxx_bridge.bzl", "rust_cxx_bridge")

package(default_visibility = ["//visibility:public"])

# rust_library(
#     name = "engine",
#     srcs = [
#         "src/lib.rs",
#     ],
#     deps = [
#         "//third_party/raze:wit_bindgen_host_wasmtime_rust",
#         "//third_party/raze:anyhow",
#         "//third_party/raze:cxx",
#     ],
#     edition = "2021",
# )

# rust_binary(
#     name = "hello_world",
#     srcs = ["src/main.rs"],
#     deps = [
#         "engine", 
#         "//third_party/raze:anyhow",
#     ],
#     edition = "2021",
# )

# rust_static_library(
#     name = "host",
#     srcs = ["src/host.rs"],
#     deps = [
#         "//third_party/raze:wit_bindgen_host_wasmtime_rust",
#         # "//third_party/raze:anyhow",
#         # "//third_party/raze:cxx",
#         # "headers",
#     ],
#     edition = "2021",
# )

rust_static_library(
    name = "hello_world_lib",
    srcs = ["src/lib.rs", "src/host.rs"],
    deps = [
        # ":host",
        # "//third_party/raze:wasmtime",
        "//third_party/raze:wit_bindgen_host_wasmtime_rust",
        "//third_party/raze:anyhow",
        "//third_party/raze:cxx",
        # "headers",
    ],
    proc_macro_deps=["//third_party/raze:wit_bindgen_host_wasmtime_rust_macro"],
    compile_data=["//src/examples/zero_out:import.wit", "//src/examples/zero_out:interface.wit"],
    edition = "2021",
)

# cc_library(
#     name = "hello_world_lib_with_headers",
#     hdrs = glob(["include/**/*.h"]),
#     include = ["include"],
# )

# cc_import(
#   name = "headers",
#   hdrs = ["include/my_header.h"],
# )

 #TODO : genrule

rust_cxx_bridge(
    name = "bridge",
    src = "src/lib.rs",
    deps = [
        ":hello_world_lib"
    ],
)
