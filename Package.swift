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
            checksum: "0aeb627c5cd4217a9ed7d2ad6a620aaa2c4838c219f154be420256796bfdd5d1")
    ]
)
