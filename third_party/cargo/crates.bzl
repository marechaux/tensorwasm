"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__addr2line__0_17_0",
        url = "https://crates.io/api/v1/crates/addr2line/0.17.0/download",
        type = "tar.gz",
        sha256 = "b9ecd88a8c8378ca913a680cd98f0f13ac67383d35993f86c90a70e3f137816b",
        strip_prefix = "addr2line-0.17.0",
        build_file = Label("//third_party/cargo/remote:BUILD.addr2line-0.17.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ahash__0_7_6",
        url = "https://crates.io/api/v1/crates/ahash/0.7.6/download",
        type = "tar.gz",
        sha256 = "fcb51a0695d8f838b1ee009b3fbf66bda078cd64590202a864a8f3e8c4315c47",
        strip_prefix = "ahash-0.7.6",
        build_file = Label("//third_party/cargo/remote:BUILD.ahash-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_19",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.19/download",
        type = "tar.gz",
        sha256 = "b4f55bd91a0978cbfd91c457a164bab8b4001c833b7f323132c0a4e1922dd44e",
        strip_prefix = "aho-corasick-0.7.19",
        build_file = Label("//third_party/cargo/remote:BUILD.aho-corasick-0.7.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__anyhow__1_0_65",
        url = "https://crates.io/api/v1/crates/anyhow/1.0.65/download",
        type = "tar.gz",
        sha256 = "98161a4e3e2184da77bb14f02184cdd111e83bbbcc9979dfee3c44b9a85f5602",
        strip_prefix = "anyhow-1.0.65",
        build_file = Label("//third_party/cargo/remote:BUILD.anyhow-1.0.65.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arrayvec__0_7_2",
        url = "https://crates.io/api/v1/crates/arrayvec/0.7.2/download",
        type = "tar.gz",
        sha256 = "8da52d66c7071e2e3fa2a1e5c6d088fec47b593032b254f5e980de8ea54454d6",
        strip_prefix = "arrayvec-0.7.2",
        build_file = Label("//third_party/cargo/remote:BUILD.arrayvec-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_trait__0_1_57",
        url = "https://crates.io/api/v1/crates/async-trait/0.1.57/download",
        type = "tar.gz",
        sha256 = "76464446b8bc32758d7e88ee1a804d9914cd9b1cb264c029899680b0be29826f",
        strip_prefix = "async-trait-0.1.57",
        build_file = Label("//third_party/cargo/remote:BUILD.async-trait-0.1.57.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//third_party/cargo/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_1_0",
        url = "https://crates.io/api/v1/crates/autocfg/1.1.0/download",
        type = "tar.gz",
        sha256 = "d468802bab17cbc0cc575e9b053f41e72aa36bfa6b7f55e3529ffa43161b97fa",
        strip_prefix = "autocfg-1.1.0",
        build_file = Label("//third_party/cargo/remote:BUILD.autocfg-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_13_0",
        url = "https://crates.io/api/v1/crates/base64/0.13.0/download",
        type = "tar.gz",
        sha256 = "904dfeac50f3cdaba28fc6f57fdcddb75f49ed61346676a78c4ffe55877802fd",
        strip_prefix = "base64-0.13.0",
        build_file = Label("//third_party/cargo/remote:BUILD.base64-0.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bincode__1_3_3",
        url = "https://crates.io/api/v1/crates/bincode/1.3.3/download",
        type = "tar.gz",
        sha256 = "b1f45e9417d87227c7a56d22e471c6206462cba514c7590c09aff4cf6d1ddcad",
        strip_prefix = "bincode-1.3.3",
        build_file = Label("//third_party/cargo/remote:BUILD.bincode-1.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_3_2",
        url = "https://crates.io/api/v1/crates/bitflags/1.3.2/download",
        type = "tar.gz",
        sha256 = "bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a",
        strip_prefix = "bitflags-1.3.2",
        build_file = Label("//third_party/cargo/remote:BUILD.bitflags-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__block_buffer__0_10_3",
        url = "https://crates.io/api/v1/crates/block-buffer/0.10.3/download",
        type = "tar.gz",
        strip_prefix = "block-buffer-0.10.3",
        build_file = Label("//third_party/cargo/remote:BUILD.block-buffer-0.10.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bumpalo__3_11_0",
        url = "https://crates.io/api/v1/crates/bumpalo/3.11.0/download",
        type = "tar.gz",
        sha256 = "c1ad822118d20d2c234f427000d5acc36eabe1e29a348c89b63dd60b13f28e5d",
        strip_prefix = "bumpalo-3.11.0",
        build_file = Label("//third_party/cargo/remote:BUILD.bumpalo-3.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__byteorder__1_4_3",
        url = "https://crates.io/api/v1/crates/byteorder/1.4.3/download",
        type = "tar.gz",
        sha256 = "14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610",
        strip_prefix = "byteorder-1.4.3",
        build_file = Label("//third_party/cargo/remote:BUILD.byteorder-1.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_73",
        url = "https://crates.io/api/v1/crates/cc/1.0.73/download",
        type = "tar.gz",
        sha256 = "2fff2a6927b3bb87f9595d67196a70493f627687a71d87a0d692242c33f58c11",
        strip_prefix = "cc-1.0.73",
        build_file = Label("//third_party/cargo/remote:BUILD.cc-1.0.73.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//third_party/cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap__4_0_18",
        url = "https://crates.io/api/v1/crates/clap/4.0.18/download",
        type = "tar.gz",
        strip_prefix = "clap-4.0.18",
        build_file = Label("//third_party/cargo/remote:BUILD.clap-4.0.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap_lex__0_3_0",
        url = "https://crates.io/api/v1/crates/clap_lex/0.3.0/download",
        type = "tar.gz",
        strip_prefix = "clap_lex-0.3.0",
        build_file = Label("//third_party/cargo/remote:BUILD.clap_lex-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__codespan_reporting__0_11_1",
        url = "https://crates.io/api/v1/crates/codespan-reporting/0.11.1/download",
        type = "tar.gz",
        strip_prefix = "codespan-reporting-0.11.1",
        build_file = Label("//third_party/cargo/remote:BUILD.codespan-reporting-0.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cpp_demangle__0_3_5",
        url = "https://crates.io/api/v1/crates/cpp_demangle/0.3.5/download",
        type = "tar.gz",
        sha256 = "eeaa953eaad386a53111e47172c2fedba671e5684c8dd601a5f474f4f118710f",
        strip_prefix = "cpp_demangle-0.3.5",
        build_file = Label("//third_party/cargo/remote:BUILD.cpp_demangle-0.3.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cpufeatures__0_2_5",
        url = "https://crates.io/api/v1/crates/cpufeatures/0.2.5/download",
        type = "tar.gz",
        sha256 = "28d997bd5e24a5928dd43e46dc529867e207907fe0b239c3477d924f7f2ca320",
        strip_prefix = "cpufeatures-0.2.5",
        build_file = Label("//third_party/cargo/remote:BUILD.cpufeatures-0.2.5.bazel"),
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_bforest__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-bforest-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_codegen__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-codegen-0.90.0.bazel"),
        init_submodules = True,
        patches = [
            "@//third_party/raze:cranelift-codegen.patch",
        ],
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_codegen_meta__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-codegen-meta-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_codegen_shared__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-codegen-shared-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_egraph__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-egraph-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_entity__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-entity-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_frontend__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-frontend-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_isle__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-isle-0.90.0.bazel"),
        init_submodules = True,
        patches = [
            "@//third_party/raze:cranelift-isle.patch",
        ],
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_native__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-native-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__cranelift_wasm__0_90_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.cranelift-wasm-0.90.0.bazel"),
        init_submodules = True,
    )

    maybe(
        http_archive,
        name = "raze__crc32fast__1_3_2",
        url = "https://crates.io/api/v1/crates/crc32fast/1.3.2/download",
        type = "tar.gz",
        sha256 = "b540bd8bc810d3885c6ea91e2018302f68baba2129ab3e88f32389ee9370880d",
        strip_prefix = "crc32fast-1.3.2",
        build_file = Label("//third_party/cargo/remote:BUILD.crc32fast-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_channel__0_5_6",
        url = "https://crates.io/api/v1/crates/crossbeam-channel/0.5.6/download",
        type = "tar.gz",
        sha256 = "c2dd04ddaf88237dc3b8d8f9a3c1004b506b54b3313403944054d23c0870c521",
        strip_prefix = "crossbeam-channel-0.5.6",
        build_file = Label("//third_party/cargo/remote:BUILD.crossbeam-channel-0.5.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_deque__0_8_2",
        url = "https://crates.io/api/v1/crates/crossbeam-deque/0.8.2/download",
        type = "tar.gz",
        sha256 = "715e8152b692bba2d374b53d4875445368fdf21a94751410af607a5ac677d1fc",
        strip_prefix = "crossbeam-deque-0.8.2",
        build_file = Label("//third_party/cargo/remote:BUILD.crossbeam-deque-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_epoch__0_9_11",
        url = "https://crates.io/api/v1/crates/crossbeam-epoch/0.9.11/download",
        type = "tar.gz",
        sha256 = "f916dfc5d356b0ed9dae65f1db9fc9770aa2851d2662b988ccf4fe3516e86348",
        strip_prefix = "crossbeam-epoch-0.9.11",
        build_file = Label("//third_party/cargo/remote:BUILD.crossbeam-epoch-0.9.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_utils__0_8_12",
        url = "https://crates.io/api/v1/crates/crossbeam-utils/0.8.12/download",
        type = "tar.gz",
        sha256 = "edbafec5fa1f196ca66527c1b12c2ec4745ca14b50f1ad8f9f6f720b55d11fac",
        strip_prefix = "crossbeam-utils-0.8.12",
        build_file = Label("//third_party/cargo/remote:BUILD.crossbeam-utils-0.8.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crypto_common__0_1_6",
        url = "https://crates.io/api/v1/crates/crypto-common/0.1.6/download",
        type = "tar.gz",
        strip_prefix = "crypto-common-0.1.6",
        build_file = Label("//third_party/cargo/remote:BUILD.crypto-common-0.1.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cxx__1_0_80",
        url = "https://crates.io/api/v1/crates/cxx/1.0.80/download",
        type = "tar.gz",
        strip_prefix = "cxx-1.0.80",
        build_file = Label("//third_party/cargo/remote:BUILD.cxx-1.0.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cxxbridge_cmd__1_0_80",
        url = "https://crates.io/api/v1/crates/cxxbridge-cmd/1.0.80/download",
        type = "tar.gz",
        strip_prefix = "cxxbridge-cmd-1.0.80",
        build_file = Label("//third_party/cargo/remote:BUILD.cxxbridge-cmd-1.0.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cxxbridge_flags__1_0_80",
        url = "https://crates.io/api/v1/crates/cxxbridge-flags/1.0.80/download",
        type = "tar.gz",
        strip_prefix = "cxxbridge-flags-1.0.80",
        build_file = Label("//third_party/cargo/remote:BUILD.cxxbridge-flags-1.0.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cxxbridge_macro__1_0_80",
        url = "https://crates.io/api/v1/crates/cxxbridge-macro/1.0.80/download",
        type = "tar.gz",
        strip_prefix = "cxxbridge-macro-1.0.80",
        build_file = Label("//third_party/cargo/remote:BUILD.cxxbridge-macro-1.0.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__digest__0_10_5",
        url = "https://crates.io/api/v1/crates/digest/0.10.5/download",
        type = "tar.gz",
        strip_prefix = "digest-0.10.5",
        build_file = Label("//third_party/cargo/remote:BUILD.digest-0.10.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__directories_next__2_0_0",
        url = "https://crates.io/api/v1/crates/directories-next/2.0.0/download",
        type = "tar.gz",
        sha256 = "339ee130d97a610ea5a5872d2bbb130fdf68884ff09d3028b81bec8a1ac23bbc",
        strip_prefix = "directories-next-2.0.0",
        build_file = Label("//third_party/cargo/remote:BUILD.directories-next-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dirs_sys_next__0_1_2",
        url = "https://crates.io/api/v1/crates/dirs-sys-next/0.1.2/download",
        type = "tar.gz",
        sha256 = "4ebda144c4fe02d1f7ea1a7d9641b6fc6b580adcfa024ae48797ecdeb6825b4d",
        strip_prefix = "dirs-sys-next-0.1.2",
        build_file = Label("//third_party/cargo/remote:BUILD.dirs-sys-next-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__either__1_8_0",
        url = "https://crates.io/api/v1/crates/either/1.8.0/download",
        type = "tar.gz",
        sha256 = "90e5c1c8368803113bf0c9584fc495a58b86dc8a29edbf8fe877d21d9507e797",
        strip_prefix = "either-1.8.0",
        build_file = Label("//third_party/cargo/remote:BUILD.either-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__encoding_rs__0_8_31",
        url = "https://crates.io/api/v1/crates/encoding_rs/0.8.31/download",
        type = "tar.gz",
        strip_prefix = "encoding_rs-0.8.31",
        build_file = Label("//third_party/cargo/remote:BUILD.encoding_rs-0.8.31.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_9_1",
        url = "https://crates.io/api/v1/crates/env_logger/0.9.1/download",
        type = "tar.gz",
        sha256 = "c90bf5f19754d10198ccb95b70664fc925bd1fc090a0fd9a6ebc54acc8cd6272",
        strip_prefix = "env_logger-0.9.1",
        build_file = Label("//third_party/cargo/remote:BUILD.env_logger-0.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__errno__0_2_8",
        url = "https://crates.io/api/v1/crates/errno/0.2.8/download",
        type = "tar.gz",
        sha256 = "f639046355ee4f37944e44f60642c6f3a7efa3cf6b78c78a0d989a8ce6c396a1",
        strip_prefix = "errno-0.2.8",
        build_file = Label("//third_party/cargo/remote:BUILD.errno-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__errno_dragonfly__0_1_2",
        url = "https://crates.io/api/v1/crates/errno-dragonfly/0.1.2/download",
        type = "tar.gz",
        sha256 = "aa68f1b12764fab894d2755d2518754e71b4fd80ecfb822714a1206c2aab39bf",
        strip_prefix = "errno-dragonfly-0.1.2",
        build_file = Label("//third_party/cargo/remote:BUILD.errno-dragonfly-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fallible_iterator__0_2_0",
        url = "https://crates.io/api/v1/crates/fallible-iterator/0.2.0/download",
        type = "tar.gz",
        sha256 = "4443176a9f2c162692bd3d352d745ef9413eec5782a80d8fd6f8a1ac692a07f7",
        strip_prefix = "fallible-iterator-0.2.0",
        build_file = Label("//third_party/cargo/remote:BUILD.fallible-iterator-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__file_per_thread_logger__0_1_5",
        url = "https://crates.io/api/v1/crates/file-per-thread-logger/0.1.5/download",
        type = "tar.gz",
        sha256 = "21e16290574b39ee41c71aeb90ae960c504ebaf1e2a1c87bd52aa56ed6e1a02f",
        strip_prefix = "file-per-thread-logger-0.1.5",
        build_file = Label("//third_party/cargo/remote:BUILD.file-per-thread-logger-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fxhash__0_2_1",
        url = "https://crates.io/api/v1/crates/fxhash/0.2.1/download",
        type = "tar.gz",
        sha256 = "c31b6d751ae2c7f11320402d34e41349dd1016f8d5d45e48c4312bc8625af50c",
        strip_prefix = "fxhash-0.2.1",
        build_file = Label("//third_party/cargo/remote:BUILD.fxhash-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__generic_array__0_14_6",
        url = "https://crates.io/api/v1/crates/generic-array/0.14.6/download",
        type = "tar.gz",
        sha256 = "bff49e947297f3312447abdca79f45f4738097cc82b06e72054d2223f601f1b9",
        strip_prefix = "generic-array-0.14.6",
        build_file = Label("//third_party/cargo/remote:BUILD.generic-array-0.14.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__getrandom__0_2_7",
        url = "https://crates.io/api/v1/crates/getrandom/0.2.7/download",
        type = "tar.gz",
        sha256 = "4eb1a864a501629691edf6c15a593b7a51eebaa1e8468e9ddc623de7c9b58ec6",
        strip_prefix = "getrandom-0.2.7",
        build_file = Label("//third_party/cargo/remote:BUILD.getrandom-0.2.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gimli__0_26_2",
        url = "https://crates.io/api/v1/crates/gimli/0.26.2/download",
        type = "tar.gz",
        sha256 = "22030e2c5a68ec659fde1e949a745124b48e6fa8b045b7ed5bd1fe4ccc5c4e5d",
        strip_prefix = "gimli-0.26.2",
        build_file = Label("//third_party/cargo/remote:BUILD.gimli-0.26.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hashbrown__0_12_3",
        url = "https://crates.io/api/v1/crates/hashbrown/0.12.3/download",
        type = "tar.gz",
        sha256 = "8a9ee70c43aaf417c914396645a0fa852624801b24ebb7ae78fe8272889ac888",
        strip_prefix = "hashbrown-0.12.3",
        build_file = Label("//third_party/cargo/remote:BUILD.hashbrown-0.12.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__heck__0_4_0",
        url = "https://crates.io/api/v1/crates/heck/0.4.0/download",
        type = "tar.gz",
        strip_prefix = "heck-0.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.heck-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_19",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.19/download",
        type = "tar.gz",
        sha256 = "62b467343b94ba476dcb2500d242dadbb39557df889310ac77c5d99100aaac33",
        strip_prefix = "hermit-abi-0.1.19",
        build_file = Label("//third_party/cargo/remote:BUILD.hermit-abi-0.1.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__2_1_0",
        url = "https://crates.io/api/v1/crates/humantime/2.1.0/download",
        type = "tar.gz",
        sha256 = "9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4",
        strip_prefix = "humantime-2.1.0",
        build_file = Label("//third_party/cargo/remote:BUILD.humantime-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__id_arena__2_2_1",
        url = "https://crates.io/api/v1/crates/id-arena/2.2.1/download",
        type = "tar.gz",
        strip_prefix = "id-arena-2.2.1",
        build_file = Label("//third_party/cargo/remote:BUILD.id-arena-2.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indexmap__1_9_1",
        url = "https://crates.io/api/v1/crates/indexmap/1.9.1/download",
        type = "tar.gz",
        sha256 = "10a35a97730320ffe8e2d410b5d3b69279b98d2c14bdb8b70ea89ecf7888d41e",
        strip_prefix = "indexmap-1.9.1",
        build_file = Label("//third_party/cargo/remote:BUILD.indexmap-1.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__io_lifetimes__0_7_3",
        url = "https://crates.io/api/v1/crates/io-lifetimes/0.7.3/download",
        type = "tar.gz",
        sha256 = "1ea37f355c05dde75b84bba2d767906ad522e97cd9e2eef2be7a4ab7fb442c06",
        strip_prefix = "io-lifetimes-0.7.3",
        build_file = Label("//third_party/cargo/remote:BUILD.io-lifetimes-0.7.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itertools__0_10_5",
        url = "https://crates.io/api/v1/crates/itertools/0.10.5/download",
        type = "tar.gz",
        sha256 = "b0fd2260e829bddf4cb6ea802289de2f86d6a7a690192fbe91b3f46e0f2c8473",
        strip_prefix = "itertools-0.10.5",
        build_file = Label("//third_party/cargo/remote:BUILD.itertools-0.10.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ittapi__0_3_1",
        url = "https://crates.io/api/v1/crates/ittapi/0.3.1/download",
        type = "tar.gz",
        sha256 = "663fe0550070071ff59e981864a9cd3ee1c869ed0a088140d9ac4dc05ea6b1a1",
        strip_prefix = "ittapi-0.3.1",
        build_file = Label("//third_party/cargo/remote:BUILD.ittapi-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ittapi_sys__0_3_1",
        url = "https://crates.io/api/v1/crates/ittapi-sys/0.3.1/download",
        type = "tar.gz",
        sha256 = "e21911b7183f38c71d75ab478a527f314e28db51027037ece2e5511ed9410703",
        strip_prefix = "ittapi-sys-0.3.1",
        build_file = Label("//third_party/cargo/remote:BUILD.ittapi-sys-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__jobserver__0_1_25",
        url = "https://crates.io/api/v1/crates/jobserver/0.1.25/download",
        type = "tar.gz",
        sha256 = "068b1ee6743e4d11fb9c6a1e6064b3693a1b600e7f5f5988047d98b3dc9fb90b",
        strip_prefix = "jobserver-0.1.25",
        build_file = Label("//third_party/cargo/remote:BUILD.jobserver-0.1.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__leb128__0_2_5",
        url = "https://crates.io/api/v1/crates/leb128/0.2.5/download",
        type = "tar.gz",
        sha256 = "884e2677b40cc8c339eaefcb701c32ef1fd2493d71118dc0ca4b6a736c93bd67",
        strip_prefix = "leb128-0.2.5",
        build_file = Label("//third_party/cargo/remote:BUILD.leb128-0.2.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_134",
        url = "https://crates.io/api/v1/crates/libc/0.2.134/download",
        type = "tar.gz",
        sha256 = "329c933548736bc49fd575ee68c89e8be4d260064184389a5b77517cddd99ffb",
        strip_prefix = "libc-0.2.134",
        build_file = Label("//third_party/cargo/remote:BUILD.libc-0.2.134.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__link_cplusplus__1_0_7",
        url = "https://crates.io/api/v1/crates/link-cplusplus/1.0.7/download",
        type = "tar.gz",
        strip_prefix = "link-cplusplus-1.0.7",
        build_file = Label("//third_party/cargo/remote:BUILD.link-cplusplus-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__linux_raw_sys__0_0_46",
        url = "https://crates.io/api/v1/crates/linux-raw-sys/0.0.46/download",
        type = "tar.gz",
        sha256 = "d4d2456c373231a208ad294c33dc5bff30051eafd954cd4caae83a712b12854d",
        strip_prefix = "linux-raw-sys-0.0.46",
        build_file = Label("//third_party/cargo/remote:BUILD.linux-raw-sys-0.0.46.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_17",
        url = "https://crates.io/api/v1/crates/log/0.4.17/download",
        type = "tar.gz",
        sha256 = "abb12e687cfb44aa40f41fc3978ef76448f9b6038cad6aef4259d3c095a2382e",
        strip_prefix = "log-0.4.17",
        build_file = Label("//third_party/cargo/remote:BUILD.log-0.4.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mach__0_3_2",
        url = "https://crates.io/api/v1/crates/mach/0.3.2/download",
        type = "tar.gz",
        sha256 = "b823e83b2affd8f40a9ee8c29dbc56404c1e34cd2710921f2801e2cf29527afa",
        strip_prefix = "mach-0.3.2",
        build_file = Label("//third_party/cargo/remote:BUILD.mach-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_5_0",
        url = "https://crates.io/api/v1/crates/memchr/2.5.0/download",
        type = "tar.gz",
        sha256 = "2dffe52ecf27772e601905b7522cb4ef790d2cc203488bbd0e2fe85fcb74566d",
        strip_prefix = "memchr-2.5.0",
        build_file = Label("//third_party/cargo/remote:BUILD.memchr-2.5.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memfd__0_6_1",
        url = "https://crates.io/api/v1/crates/memfd/0.6.1/download",
        type = "tar.gz",
        sha256 = "480b5a5de855d11ff13195950bdc8b98b5e942ef47afc447f6615cdcc4e15d80",
        strip_prefix = "memfd-0.6.1",
        build_file = Label("//third_party/cargo/remote:BUILD.memfd-0.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memoffset__0_6_5",
        url = "https://crates.io/api/v1/crates/memoffset/0.6.5/download",
        type = "tar.gz",
        sha256 = "5aa361d4faea93603064a027415f07bd8e1d5c88c9fbf68bf56a285428fd79ce",
        strip_prefix = "memoffset-0.6.5",
        build_file = Label("//third_party/cargo/remote:BUILD.memoffset-0.6.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_13_1",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.1/download",
        type = "tar.gz",
        sha256 = "19e64526ebdee182341572e50e9ad03965aa510cd94427a4549448f285e957a1",
        strip_prefix = "num_cpus-1.13.1",
        build_file = Label("//third_party/cargo/remote:BUILD.num_cpus-1.13.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__object__0_29_0",
        url = "https://crates.io/api/v1/crates/object/0.29.0/download",
        type = "tar.gz",
        sha256 = "21158b2c33aa6d4561f1c0a6ea283ca92bc54802a93b263e910746d679a7eb53",
        strip_prefix = "object-0.29.0",
        build_file = Label("//third_party/cargo/remote:BUILD.object-0.29.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_15_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.15.0/download",
        type = "tar.gz",
        sha256 = "e82dad04139b71a90c080c8463fe0dc7902db5192d939bd0950f074d014339e1",
        strip_prefix = "once_cell-1.15.0",
        build_file = Label("//third_party/cargo/remote:BUILD.once_cell-1.15.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__os_str_bytes__6_3_1",
        url = "https://crates.io/api/v1/crates/os_str_bytes/6.3.1/download",
        type = "tar.gz",
        strip_prefix = "os_str_bytes-6.3.1",
        build_file = Label("//third_party/cargo/remote:BUILD.os_str_bytes-6.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__paste__1_0_9",
        url = "https://crates.io/api/v1/crates/paste/1.0.9/download",
        type = "tar.gz",
        sha256 = "b1de2e551fb905ac83f73f7aedf2f0cb4a0da7e35efa24a202a936269f1f18e1",
        strip_prefix = "paste-1.0.9",
        build_file = Label("//third_party/cargo/remote:BUILD.paste-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ppv_lite86__0_2_16",
        url = "https://crates.io/api/v1/crates/ppv-lite86/0.2.16/download",
        type = "tar.gz",
        sha256 = "eb9f9e6e233e5c4a35559a617bf40a4ec447db2e84c20b55a6f83167b7e57872",
        strip_prefix = "ppv-lite86-0.2.16",
        build_file = Label("//third_party/cargo/remote:BUILD.ppv-lite86-0.2.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_46",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.46/download",
        type = "tar.gz",
        sha256 = "94e2ef8dbfc347b10c094890f778ee2e36ca9bb4262e86dc99cd217e35f3470b",
        strip_prefix = "proc-macro2-1.0.46",
        build_file = Label("//third_party/cargo/remote:BUILD.proc-macro2-1.0.46.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__psm__0_1_21",
        url = "https://crates.io/api/v1/crates/psm/0.1.21/download",
        type = "tar.gz",
        sha256 = "5787f7cda34e3033a72192c018bc5883100330f362ef279a8cbccfce8bb4e874",
        strip_prefix = "psm-0.1.21",
        build_file = Label("//third_party/cargo/remote:BUILD.psm-0.1.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pulldown_cmark__0_8_0",
        url = "https://crates.io/api/v1/crates/pulldown-cmark/0.8.0/download",
        type = "tar.gz",
        strip_prefix = "pulldown-cmark-0.8.0",
        build_file = Label("//third_party/cargo/remote:BUILD.pulldown-cmark-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_21",
        url = "https://crates.io/api/v1/crates/quote/1.0.21/download",
        type = "tar.gz",
        sha256 = "bbe448f377a7d6961e30f5955f9b8d106c3f5e449d493ee1b125c1d43c2b5179",
        strip_prefix = "quote-1.0.21",
        build_file = Label("//third_party/cargo/remote:BUILD.quote-1.0.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand__0_8_5",
        url = "https://crates.io/api/v1/crates/rand/0.8.5/download",
        type = "tar.gz",
        sha256 = "34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404",
        strip_prefix = "rand-0.8.5",
        build_file = Label("//third_party/cargo/remote:BUILD.rand-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_chacha__0_3_1",
        url = "https://crates.io/api/v1/crates/rand_chacha/0.3.1/download",
        type = "tar.gz",
        sha256 = "e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88",
        strip_prefix = "rand_chacha-0.3.1",
        build_file = Label("//third_party/cargo/remote:BUILD.rand_chacha-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rand_core__0_6_4",
        url = "https://crates.io/api/v1/crates/rand_core/0.6.4/download",
        type = "tar.gz",
        sha256 = "ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c",
        strip_prefix = "rand_core-0.6.4",
        build_file = Label("//third_party/cargo/remote:BUILD.rand_core-0.6.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rayon__1_5_3",
        url = "https://crates.io/api/v1/crates/rayon/1.5.3/download",
        type = "tar.gz",
        sha256 = "bd99e5772ead8baa5215278c9b15bf92087709e9c1b2d1f97cdb5a183c933a7d",
        strip_prefix = "rayon-1.5.3",
        build_file = Label("//third_party/cargo/remote:BUILD.rayon-1.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rayon_core__1_9_3",
        url = "https://crates.io/api/v1/crates/rayon-core/1.9.3/download",
        type = "tar.gz",
        sha256 = "258bcdb5ac6dad48491bb2992db6b7cf74878b0384908af124823d118c99683f",
        strip_prefix = "rayon-core-1.9.3",
        build_file = Label("//third_party/cargo/remote:BUILD.rayon-core-1.9.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_2_16",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.16/download",
        type = "tar.gz",
        sha256 = "fb5a58c1855b4b6819d59012155603f0b22ad30cad752600aadfcb695265519a",
        strip_prefix = "redox_syscall-0.2.16",
        build_file = Label("//third_party/cargo/remote:BUILD.redox_syscall-0.2.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_users__0_4_3",
        url = "https://crates.io/api/v1/crates/redox_users/0.4.3/download",
        type = "tar.gz",
        sha256 = "b033d837a7cf162d7993aded9304e30a83213c648b6e389db233191f891e5c2b",
        strip_prefix = "redox_users-0.4.3",
        build_file = Label("//third_party/cargo/remote:BUILD.redox_users-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regalloc2__0_4_2",
        url = "https://crates.io/api/v1/crates/regalloc2/0.4.2/download",
        type = "tar.gz",
        strip_prefix = "regalloc2-0.4.2",
        build_file = Label("//third_party/cargo/remote:BUILD.regalloc2-0.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_6_0",
        url = "https://crates.io/api/v1/crates/regex/1.6.0/download",
        type = "tar.gz",
        sha256 = "4c4eb3267174b8c6c2f654116623910a0fef09c4753f8dd83db29c48a0df988b",
        strip_prefix = "regex-1.6.0",
        build_file = Label("//third_party/cargo/remote:BUILD.regex-1.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_27",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.27/download",
        type = "tar.gz",
        sha256 = "a3f87b73ce11b1619a3c6332f45341e0047173771e8b8b73f87bfeefb7b56244",
        strip_prefix = "regex-syntax-0.6.27",
        build_file = Label("//third_party/cargo/remote:BUILD.regex-syntax-0.6.27.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_demangle__0_1_21",
        url = "https://crates.io/api/v1/crates/rustc-demangle/0.1.21/download",
        type = "tar.gz",
        sha256 = "7ef03e0a2b150c7a90d01faf6254c9c48a41e95fb2a8c2ac1c6f0d2b9aefc342",
        strip_prefix = "rustc-demangle-0.1.21",
        build_file = Label("//third_party/cargo/remote:BUILD.rustc-demangle-0.1.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustix__0_35_11",
        url = "https://crates.io/api/v1/crates/rustix/0.35.11/download",
        type = "tar.gz",
        sha256 = "fbb2fda4666def1433b1b05431ab402e42a1084285477222b72d6c564c417cef",
        strip_prefix = "rustix-0.35.11",
        build_file = Label("//third_party/cargo/remote:BUILD.rustix-0.35.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scopeguard__1_1_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.1.0/download",
        type = "tar.gz",
        sha256 = "d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//third_party/cargo/remote:BUILD.scopeguard-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_145",
        url = "https://crates.io/api/v1/crates/serde/1.0.145/download",
        type = "tar.gz",
        sha256 = "728eb6351430bccb993660dfffc5a72f91ccc1295abaa8ce19b27ebe4f75568b",
        strip_prefix = "serde-1.0.145",
        build_file = Label("//third_party/cargo/remote:BUILD.serde-1.0.145.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_145",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.145/download",
        type = "tar.gz",
        sha256 = "81fa1584d3d1bcacd84c277a0dfe21f5b0f6accf4a23d04d4c6d61f1af522b4c",
        strip_prefix = "serde_derive-1.0.145",
        build_file = Label("//third_party/cargo/remote:BUILD.serde_derive-1.0.145.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sha2__0_10_6",
        url = "https://crates.io/api/v1/crates/sha2/0.10.6/download",
        type = "tar.gz",
        strip_prefix = "sha2-0.10.6",
        build_file = Label("//third_party/cargo/remote:BUILD.sha2-0.10.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slice_group_by__0_3_0",
        url = "https://crates.io/api/v1/crates/slice-group-by/0.3.0/download",
        type = "tar.gz",
        sha256 = "03b634d87b960ab1a38c4fe143b508576f075e7c978bfad18217645ebfdfa2ec",
        strip_prefix = "slice-group-by-0.3.0",
        build_file = Label("//third_party/cargo/remote:BUILD.slice-group-by-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__1_9_0",
        url = "https://crates.io/api/v1/crates/smallvec/1.9.0/download",
        type = "tar.gz",
        sha256 = "2fd0db749597d91ff862fd1d55ea87f7855a744a8425a64695b6fca237d1dad1",
        strip_prefix = "smallvec-1.9.0",
        build_file = Label("//third_party/cargo/remote:BUILD.smallvec-1.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__stable_deref_trait__1_2_0",
        url = "https://crates.io/api/v1/crates/stable_deref_trait/1.2.0/download",
        type = "tar.gz",
        sha256 = "a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3",
        strip_prefix = "stable_deref_trait-1.2.0",
        build_file = Label("//third_party/cargo/remote:BUILD.stable_deref_trait-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__strsim__0_10_0",
        url = "https://crates.io/api/v1/crates/strsim/0.10.0/download",
        type = "tar.gz",
        strip_prefix = "strsim-0.10.0",
        build_file = Label("//third_party/cargo/remote:BUILD.strsim-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_101",
        url = "https://crates.io/api/v1/crates/syn/1.0.101/download",
        type = "tar.gz",
        sha256 = "e90cde112c4b9690b8cbe810cba9ddd8bc1d7472e2cae317b69e9438c1cba7d2",
        strip_prefix = "syn-1.0.101",
        build_file = Label("//third_party/cargo/remote:BUILD.syn-1.0.101.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__target_lexicon__0_12_4",
        url = "https://crates.io/api/v1/crates/target-lexicon/0.12.4/download",
        type = "tar.gz",
        sha256 = "c02424087780c9b71cc96799eaeddff35af2bc513278cda5c99fc1f5d026d3c1",
        strip_prefix = "target-lexicon-0.12.4",
        build_file = Label("//third_party/cargo/remote:BUILD.target-lexicon-0.12.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__termcolor__1_1_3",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.3/download",
        type = "tar.gz",
        sha256 = "bab24d30b911b2376f3a13cc2cd443142f0c81dda04c118693e35b3835757755",
        strip_prefix = "termcolor-1.1.3",
        build_file = Label("//third_party/cargo/remote:BUILD.termcolor-1.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror__1_0_37",
        url = "https://crates.io/api/v1/crates/thiserror/1.0.37/download",
        type = "tar.gz",
        sha256 = "10deb33631e3c9018b9baf9dcbbc4f737320d2b576bac10f6aefa048fa407e3e",
        strip_prefix = "thiserror-1.0.37",
        build_file = Label("//third_party/cargo/remote:BUILD.thiserror-1.0.37.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror_impl__1_0_37",
        url = "https://crates.io/api/v1/crates/thiserror-impl/1.0.37/download",
        type = "tar.gz",
        sha256 = "982d17546b47146b28f7c22e3d08465f6b8903d0ea13c1660d9d84a6e7adcdbb",
        strip_prefix = "thiserror-impl-1.0.37",
        build_file = Label("//third_party/cargo/remote:BUILD.thiserror-impl-1.0.37.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__toml__0_5_9",
        url = "https://crates.io/api/v1/crates/toml/0.5.9/download",
        type = "tar.gz",
        sha256 = "8d82e1a7758622a465f8cee077614c73484dac5b836c02ff6a40d5d1010324d7",
        strip_prefix = "toml-0.5.9",
        build_file = Label("//third_party/cargo/remote:BUILD.toml-0.5.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__typenum__1_15_0",
        url = "https://crates.io/api/v1/crates/typenum/1.15.0/download",
        type = "tar.gz",
        sha256 = "dcf81ac59edc17cc8697ff311e8f5ef2d99fcbd9817b34cec66f90b6c3dfd987",
        strip_prefix = "typenum-1.15.0",
        build_file = Label("//third_party/cargo/remote:BUILD.typenum-1.15.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicase__2_6_0",
        url = "https://crates.io/api/v1/crates/unicase/2.6.0/download",
        type = "tar.gz",
        strip_prefix = "unicase-2.6.0",
        build_file = Label("//third_party/cargo/remote:BUILD.unicase-2.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_ident__1_0_4",
        url = "https://crates.io/api/v1/crates/unicode-ident/1.0.4/download",
        type = "tar.gz",
        sha256 = "dcc811dc4066ac62f84f11307873c4850cb653bfa9b1719cee2bd2204a4bc5dd",
        strip_prefix = "unicode-ident-1.0.4",
        build_file = Label("//third_party/cargo/remote:BUILD.unicode-ident-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_segmentation__1_10_0",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.10.0/download",
        type = "tar.gz",
        strip_prefix = "unicode-segmentation-1.10.0",
        build_file = Label("//third_party/cargo/remote:BUILD.unicode-segmentation-1.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_width__0_1_10",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.10/download",
        type = "tar.gz",
        sha256 = "c0edd1e5b14653f783770bce4a4dabb4a5108a5370a5f5d8cfe8710c361f6c8b",
        strip_prefix = "unicode-width-0.1.10",
        build_file = Label("//third_party/cargo/remote:BUILD.unicode-width-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_4",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.4/download",
        type = "tar.gz",
        strip_prefix = "unicode-xid-0.2.4",
        build_file = Label("//third_party/cargo/remote:BUILD.unicode-xid-0.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_4",
        url = "https://crates.io/api/v1/crates/version_check/0.9.4/download",
        type = "tar.gz",
        sha256 = "49874b5167b65d7193b8aba1567f5c7d93d001cafc34600cee003eda787e483f",
        strip_prefix = "version_check-0.9.4",
        build_file = Label("//third_party/cargo/remote:BUILD.version_check-0.9.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_11_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.11.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423",
        strip_prefix = "wasi-0.11.0+wasi-snapshot-preview1",
        build_file = Label("//third_party/cargo/remote:BUILD.wasi-0.11.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_encoder__0_19_0",
        url = "https://crates.io/api/v1/crates/wasm-encoder/0.19.0/download",
        type = "tar.gz",
        strip_prefix = "wasm-encoder-0.19.0",
        build_file = Label("//third_party/cargo/remote:BUILD.wasm-encoder-0.19.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasmparser__0_93_0",
        url = "https://crates.io/api/v1/crates/wasmparser/0.93.0/download",
        type = "tar.gz",
        strip_prefix = "wasmparser-0.93.0",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmparser-0.93.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasmprinter__0_2_42",
        url = "https://crates.io/api/v1/crates/wasmprinter/0.2.42/download",
        type = "tar.gz",
        strip_prefix = "wasmprinter-0.2.42",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmprinter-0.2.42.bazel"),
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_asm_macros__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-asm-macros-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_cache__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-cache-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_component_macro__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-component-macro-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_component_util__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-component-util-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_cranelift__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-cranelift-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_environ__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-environ-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_fiber__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-fiber-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_jit__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-jit-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_jit_debug__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-jit-debug-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_jit_icache_coherence__2_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-jit-icache-coherence-2.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_runtime__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-runtime-3.0.0.bazel"),
        init_submodules = True,
        patches = [
            "@//third_party/raze:wasmtime-runtime.patch",
        ],
    )

    maybe(
        new_git_repository,
        name = "raze__wasmtime_types__3_0_0",
        remote = "https://github.com/bytecodealliance/wasmtime",
        commit = "3ef30b5b6736131c030be46a1ccc87fba9cdb89b",
        build_file = Label("//third_party/cargo/remote:BUILD.wasmtime-types-3.0.0.bazel"),
        init_submodules = True,
    )

    maybe(
        http_archive,
        name = "raze__wast__48_0_0",
        url = "https://crates.io/api/v1/crates/wast/48.0.0/download",
        type = "tar.gz",
        strip_prefix = "wast-48.0.0",
        build_file = Label("//third_party/cargo/remote:BUILD.wast-48.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wat__1_0_50",
        url = "https://crates.io/api/v1/crates/wat/1.0.50/download",
        type = "tar.gz",
        strip_prefix = "wat-1.0.50",
        build_file = Label("//third_party/cargo/remote:BUILD.wat-1.0.50.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//third_party/cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_sys__0_36_1",
        url = "https://crates.io/api/v1/crates/windows-sys/0.36.1/download",
        type = "tar.gz",
        sha256 = "ea04155a16a59f9eab786fe12a4a450e75cdb175f9e0d80da1e17db09f55b8d2",
        strip_prefix = "windows-sys-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows-sys-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_aarch64_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_aarch64_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "9bb8c3fd39ade2d67e9874ac4f3db21f0d710bee00fe7cab16949ec184eeaa47",
        strip_prefix = "windows_aarch64_msvc-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows_aarch64_msvc-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_i686_gnu__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_i686_gnu/0.36.1/download",
        type = "tar.gz",
        sha256 = "180e6ccf01daf4c426b846dfc66db1fc518f074baa793aa7d9b9aaeffad6a3b6",
        strip_prefix = "windows_i686_gnu-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows_i686_gnu-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_i686_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_i686_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "e2e7917148b2812d1eeafaeb22a97e4813dfa60a3f8f78ebe204bcc88f12f024",
        strip_prefix = "windows_i686_msvc-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows_i686_msvc-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_x86_64_gnu__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_x86_64_gnu/0.36.1/download",
        type = "tar.gz",
        sha256 = "4dcd171b8776c41b97521e5da127a2d86ad280114807d0b2ab1e462bc764d9e1",
        strip_prefix = "windows_x86_64_gnu-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows_x86_64_gnu-0.36.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__windows_x86_64_msvc__0_36_1",
        url = "https://crates.io/api/v1/crates/windows_x86_64_msvc/0.36.1/download",
        type = "tar.gz",
        sha256 = "c811ca4a8c853ef420abd8592ba53ddbbac90410fab6903b3e79972a631f7680",
        strip_prefix = "windows_x86_64_msvc-0.36.1",
        build_file = Label("//third_party/cargo/remote:BUILD.windows_x86_64_msvc-0.36.1.bazel"),
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_core__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-core-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_gen_host_wasmtime_rust__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-gen-host-wasmtime-rust-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_gen_rust_lib__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-gen-rust-lib-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_host_wasmtime_rust__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-host-wasmtime-rust-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_host_wasmtime_rust_macro__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-host-wasmtime-rust-macro-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_bindgen_rust_macro_shared__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-bindgen-rust-macro-shared-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_component__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-component-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        new_git_repository,
        name = "raze__wit_parser__0_3_0",
        remote = "https://github.com/bytecodealliance/wit-bindgen",
        commit = "f22e230007d3706dddfa14177450e69b7260557f",
        build_file = Label("//third_party/cargo/remote:BUILD.wit-parser-0.3.0.bazel"),
        init_submodules = True,
    )

    maybe(
        http_archive,
        name = "raze__zstd__0_11_2_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd/0.11.2+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "20cc960326ece64f010d2d2107537f26dc589a6573a316bd5b1dba685fa5fde4",
        strip_prefix = "zstd-0.11.2+zstd.1.5.2",
        build_file = Label("//third_party/cargo/remote:BUILD.zstd-0.11.2+zstd.1.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__zstd_safe__5_0_2_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd-safe/5.0.2+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "1d2a5585e04f9eea4b2a3d1eca508c4dee9592a89ef6f450c11719da0726f4db",
        strip_prefix = "zstd-safe-5.0.2+zstd.1.5.2",
        build_file = Label("//third_party/cargo/remote:BUILD.zstd-safe-5.0.2+zstd.1.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__zstd_sys__2_0_1_zstd_1_5_2",
        url = "https://crates.io/api/v1/crates/zstd-sys/2.0.1+zstd.1.5.2/download",
        type = "tar.gz",
        sha256 = "9fd07cbbc53846d9145dbffdf6dd09a7a0aa52be46741825f5c97bdd4f73f12b",
        strip_prefix = "zstd-sys-2.0.1+zstd.1.5.2",
        build_file = Label("//third_party/cargo/remote:BUILD.zstd-sys-2.0.1+zstd.1.5.2.bazel"),
    )
