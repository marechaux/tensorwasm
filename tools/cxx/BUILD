load("@bazel_skylib//rules:diff_test.bzl", "diff_test")
load("@bazel_skylib//rules:write_file.bzl", "write_file")

# TODO : auto-generate this file from the BUILD file ? 
_GENERATED = {
    "src/engine/src/lib.rs.h": "//src/engine:src/lib.rs.h",
    "tensorflow/core/framework": "@org_tensorflow//tensorflow/core:framework",
}

# Generate the updater script so there's only one target for devs to run,
# even if many generated files are in the source folder.
write_file(
    name = "gen_update",
    out = "update.sh",
    content = [
        # This depends on bash, would need tweaks for Windows
        "#!/usr/bin/env bash",
        # Bazel gives us a way to access the source folder!
        "cd $BUILD_WORKSPACE_DIRECTORY",
    ] + [
        # Paths are now relative to the workspace.
        # We can copy files from bazel-bin to the sources
        "cp -fv bazel-bin/{1} {0}".format(
            k,
            # Convert label to path
            v.replace(":", "/"),
        )
        for [k, v] in _GENERATED.items()
    ],
)

# This is what you can `bazel run` and it can write to the source folder
sh_binary(
    name = "update",
    srcs = ["update.sh"],
    data = _GENERATED.values(),
    visibility = ["//visibility:public"],
)

