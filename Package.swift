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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78/SwiftGodot.xcframework.zip",
            checksum: "7b7bad66da68e9ce94f953bf74c2ed114c898957fbf86a49936d02e121f979d1"
        ),
        .binaryTarget(
            name: "SwiftGodotRuntime",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78/SwiftGodotRuntime.xcframework.zip",
            checksum: "89a7acb7fcd88257c615086c1aeea892243f204bb1fb353dc31372bb9bf7d3fe"
        ),
        .binaryTarget(
            name: "GDExtension",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78/GDExtension.xcframework.zip",
            checksum: "4577c434265da02acf18a2a8ccac54f9d9601b113362e691e41b743b794f28cb"
        ),
        .binaryTarget(
            name: "SwiftGodotMacroPlugin",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.78/SwiftGodotMacroPlugin.xcframework.zip",
            checksum: "7fb4ef7ddc31cb10ba68e31e8aa1ea5525ef7c90674c7a1ee2b304ae0ad71585"
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
