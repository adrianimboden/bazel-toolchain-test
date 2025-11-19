load("@bazel_features//:features.bzl", "bazel_features")
load("@rules_cc//cc/common:cc_info.bzl", "CcInfo")
load("@rules_cc//cc/common:debug_package_info.bzl", "DebugPackageInfo")

visibility("private")

SPECIAL_CASED_PROVIDERS = [
    DefaultInfo,
    # Forwarding is handled by coverage_common.instrumented_files_info.
    InstrumentedFilesInfo,
    # RunEnvironmentInfo can't be returned from a non-executable, non-test rule and thus requires
    # special handling so that it isn't returned by the transitioning alias.
    RunEnvironmentInfo,
]

DEFAULT_PROVIDERS = [
    p
    for p in [
        AnalysisTestResultInfo,
        CcInfo,
        CcToolchainConfigInfo,
        DebugPackageInfo,
        OutputGroupInfo,
        bazel_features.globals.PyInfo,
        bazel_features.globals.PyRuntimeInfo,
        config_common.FeatureFlagInfo,
        platform_common.TemplateVariableInfo,
        platform_common.ToolchainInfo,
    ]
    if p
]

IMPLICIT_TARGETS = {
    "cc_binary": [
        "{name}.dwp",
        "{name}.stripped",
    ],
    "cc_test": [
        "{name}.dwp",
        "{name}.stripped",
    ],
}
