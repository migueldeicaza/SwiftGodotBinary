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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.77.2/SwiftGodot.xcframework.zip",
            checksum: "c753b4cfc3636f82617db4cafb39992a9f74e01318a1e8246cfc34c3fc1a7bf4"
        ),
        .binaryTarget(
            name: "SwiftGodotRuntime",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.77.2/SwiftGodotRuntime.xcframework.zip",
            checksum: "001d52f0280d75fa2f99629fbc79640f791ba6fa1d1c6ba2cbf22c0703a3fc61"
        ),
        .binaryTarget(
            name: "GDExtension",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.77.2/GDExtension.xcframework.zip",
            checksum: "37926ccd1e263c637acee873e290fd0ce835b8ca8759d81ce9db4f362a4adaf4"
        ),
        .binaryTarget(
            name: "SwiftGodotMacroPlugin",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.77.2/SwiftGodotMacroPlugin.xcframework.zip",
            checksum: "853f214a2d422dd21a21e22b6d285ab038e8cf97aaaa3ffeb94d6f759c5b48b0"
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
