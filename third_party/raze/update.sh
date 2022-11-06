#!/usr/bin/env bash
cargo generate-lockfile && \
# cargo vendor --versioned-dirs --locked && \
cargo raze && \
cat >> $(find ../cargo/remote -name "BUILD.cxx-*.bazel") <<- EOM

cc_library(
 name="cxx_cc_library",
 hdrs=glob(["include/**/*.h"]),
 srcs=glob(["src/**/*.cc"]),
 linkstatic=True,
)

EOM

# Make sed -i cross-platform: https://stackoverflow.com/a/51060063/684776
sedi=(-i)
case "$(uname)" in
  Darwin*) sedi=(-i "")
esac

# Remove pdf files from data attribute of cargo_build_script (some contains spaces)
for lib in wasmtime wasmtime-runtime wasmtime-fiber wasmtime-cache cranelift-codegen cranelift-isle; do
  file=$(find ../cargo/remote -name "BUILD.$lib-[0-9\.]*.bazel")
  echo "Applying diff to $file"
  sed "${sedi[@]}" -e 's/glob(\["\*\*"\])/glob(\["\*\*"\], exclude=\["\*\*\/\*\.pdf"\])/g' $file
done
