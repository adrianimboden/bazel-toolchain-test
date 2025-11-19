load("defs.bzl", "cc_binary_gnu", "cc_binary_musl")

cc_binary(
    name = "main",
    srcs = ["main.cpp"],
)

cc_binary_musl(
    name = "main_musl",
    srcs = ["main.cpp"],
    target_compatible_with = [
        "@zig_sdk//libc:musl",
    ],
)

cc_binary_gnu(
    name = "main_gnu",
    srcs = ["main.cpp"],
    target_compatible_with = [
        "@zig_sdk//libc:gnu.2.17",
    ],
)
