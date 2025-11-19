cc_binary(
    name = "main",
    srcs = ["main.cpp"],
)

cc_binary(
    name = "main_musl",
    srcs = ["main.cpp"],
    target_compatible_with = [
        "@zig_sdk//libc:musl",
    ],
)

cc_binary(
    name = "main_gnu",
    srcs = ["main.cpp"],
    target_compatible_with = [
        "@zig_sdk//libc:gnu.2.17",
    ],
)
