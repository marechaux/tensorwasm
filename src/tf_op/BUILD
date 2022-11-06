load("@rules_python//python:defs.bzl", "py_binary")
# load("@rules_cc//cc:defs.bzl", "cc_library")
load("@org_tensorflow//tensorflow:tensorflow.bzl", "tf_custom_op_library")


py_binary(
  name = "main",
  srcs = ["main.py"],
  deps = [
        "@pypi_tensorflow//:pkg",
    ],
  data=[":op.so"],
)

tf_custom_op_library(
  name = "op.so",
  srcs = ["op.cc"],
  # deps = [
  #     "@org_tensorflow//tensorflow/core:framework_headers_lib",
  # ],
  deps = [
      "//src/engine:bridge",
      "//third_party/raze:cxx_cc_library"
      # "@raze__cxx__1_0_78//:cxx_cc",
      # "@raze__link_cplusplus__1_0_7//:link_cplusplus",
  ],
)
