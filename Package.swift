// swift-tools-version: 6.3

import CompilerPluginSupport
import PackageDescription

// SwiftGodotMacroPlugin is the SwiftGodot macro implementation, and the
// swift-syntax it uses, prebuilt as a static library. The macro target below
// only starts it, so this package has no swift-syntax dependency and nothing
// here has to be compiled against a matching toolchain prebuilt.
let package = Package(
    name: "SwiftGodot",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
    ],
    products: [
        .library(name: "SwiftGodot", targets: ["SwiftGodotSupport"]),
        .library(name: "SwiftGodotRuntime", targets: ["SwiftGodotRuntimeSupport"]),
    ],
    targets: [
        .binaryTarget(
            name: "SwiftGodot",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78.0/SwiftGodot.xcframework.zip",
            checksum: "2473f07e7aa3bf7d4cdf83042c5dd135c1f9e009e78303addc5204fa1099d2a9"
        ),
        .binaryTarget(
            name: "SwiftGodotRuntime",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78.0/SwiftGodotRuntime.xcframework.zip",
            checksum: "8ec8fa1c8dd2a1ebb248bbf47c38e3a562c4ad48d2e533c9b9ef00ffe61cdfcb"
        ),
        .binaryTarget(
            name: "GDExtension",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78.0/GDExtension.xcframework.zip",
            checksum: "28b69569705431d5a73ad090e949ac5ed67ddd94d5fe868a170453d5f3e59f2d"
        ),
        .binaryTarget(
            name: "SwiftGodotMacroPlugin",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78.0/SwiftGodotMacroPlugin.xcframework.zip",
            checksum: "acb198e5dfb808b5f3ac32ce8e82ff4159d5a584a23bf5755dfa9768cac733d4"
        ),
        .macro(
            name: "SwiftGodotMacroLibrary",
            dependencies: ["SwiftGodotMacroPlugin"]
        ),
        .target(
            name: "SwiftGodotSupport",
            dependencies: [
                "SwiftGodot",
                "SwiftGodotRuntime",
                "GDExtension",
                "SwiftGodotMacroLibrary",
            ]
        ),
        .target(
            name: "SwiftGodotRuntimeSupport",
            dependencies: [
                "SwiftGodotRuntime",
                "GDExtension",
                "SwiftGodotMacroLibrary",
            ]
        ),
    ]
)
