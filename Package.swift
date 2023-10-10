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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.21/SwiftGodot.xcframework.zip",
            checksum: "86a744d3581e5e3a1c9ec7157af776500e1455e367a089a1c5f7dfc1f07d168d")
    ]
)
