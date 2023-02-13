# load("//tools/tensorflow:foo.bzl", "foo_binary")
load("@rules_python//python:pip.bzl", "compile_pip_requirements")

alias(
  name = "generate_headers",
  actual = "//tools/cxx:update"
)

alias(
  name = "gen_rust_project",
  actual = "@rules_rust//tools/rust_analyzer:gen_rust_project"
)

compile_pip_requirements(
    # base name for generated targets, typically "requirements"
    name = "requirements",
    requirements_in = ":requirements.txt",
    requirements_txt = ":requirements_lock.txt",
    extra_args = ["--allow-unsafe"],
)
