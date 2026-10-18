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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.99.1-48-beta.1/SwiftGodot.xcframework.zip",
            checksum: "d3f078a4982378a95f536a7f818d5f0c9d4d3a305afc3acf06a344f9e9a58287"
        ),
        .binaryTarget(
            name: "SwiftGodotRuntime",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.99.1-48-beta.1/SwiftGodotRuntime.xcframework.zip",
            checksum: "11f346b049a438590654b3ff5ce6ee8bb5e07cac45db09ab0ef3e99481e0b9ad"
        ),
        .binaryTarget(
            name: "GDExtension",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.99.1-48-beta.1/GDExtension.xcframework.zip",
            checksum: "dabfd95ce55db854255ed6973383f3c23b53dc3e8fa40c6f0bb6a9c924d77146"
        ),
        .binaryTarget(
            name: "SwiftGodotMacroPlugin",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.99.1-48-beta.1/SwiftGodotMacroPlugin.xcframework.zip",
            checksum: "f7e62dcfa26a430aef10f7bc590b1eaa63ba992d7853eaa012f91e3993de4889"
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
