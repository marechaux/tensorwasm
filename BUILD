load("//tools/tensorflow:foo.bzl", "foo_binary")
load("@rules_python//python:pip.bzl", "compile_pip_requirements")

alias(
  name = "generate_headers",
  actual = "//tools/cxx:update"
)

compile_pip_requirements(
    # base name for generated targets, typically "requirements"
    name = "requirements",
    requirements_in = ":requirements.txt",
    requirements_txt = ":requirements_lock.txt",
    extra_args = ["--allow-unsafe"],
)

print("BUILD file")

foo_binary(name = "bin1", username="foo")
foo_binary(name = "bin2", username="foo")

