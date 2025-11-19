load("@with_cfg.bzl", "with_cfg")

cc_binary_musl = with_cfg(native.cc_binary).set(
    "platforms",
    "@zig_sdk//libc_aware/platform:linux_amd64_musl",
).build()[0]

cc_binary_gnu = with_cfg(native.cc_binary).set(
    "platforms",
    "@zig_sdk//libc_aware/platform:linux_amd64_gnu.2.17",
).build()[0]
