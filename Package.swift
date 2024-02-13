// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGodot",
    products: [
        .library(
            name: "SwiftGodot",
            targets: ["SwiftGodot"])
    ],
    targets: [
        .binaryTarget(
            name: "SwiftGodot",
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/0.38/SwiftGodot.xcframework.zip",
            checksum: "a25cf7f89ee69af98ed36c2cb8e7286a34e03ad6c9935d07b5ece9d548b94f87"),
        .testTarget(name: "SwiftGodotTests", dependencies: ["SwiftGodot"]),
    ]
)
