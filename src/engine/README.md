Headers files are made using c bindgen

```
cargo install --force cbindgen
cbindgen --config cbindgen.toml --crate engine --output my_header.h
```

TODO: make a bazel target to build it

https://cxx.rs/tutorial.html

TODO : rust_analyser from bazel

generated with 
```
../../bazel-bin/external/raze__cxxbridge_cmd__1_0_78/cargo_bin_cxxbridge src/lib.rs --header > src/lib.rs.h
bazel run //:generate_headers
```


