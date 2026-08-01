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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.79.0/SwiftGodot.xcframework.zip",
            checksum: "9a6dc295ff732d0d339eed7b1658d89659ef6ba35921863f3bda9ec3fd0f89c0"
        ),
        .binaryTarget(
            name: "SwiftGodotRuntime",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.79.0/SwiftGodotRuntime.xcframework.zip",
            checksum: "0b69f9e9634ac1d1be853f2be22b78f75da4ba9356fbf7d39928e4da280e5c62"
        ),
        .binaryTarget(
            name: "GDExtension",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.79.0/GDExtension.xcframework.zip",
            checksum: "d3724756ca3c64b723f483f572a3d318b6af2957caad36b98077bc1b2d2c8441"
        ),
        .binaryTarget(
            name: "SwiftGodotMacroPlugin",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.79.0/SwiftGodotMacroPlugin.xcframework.zip",
            checksum: "89fd54d023328d7944ef2fafa12c3c1be683f7e1292be8a540f0b599adab5acd"
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
