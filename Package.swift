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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.19/SwiftGodot.xcframework.zip",
            checksum: "0e59cb37bd4cba814a2380c97c7b94a7518e03de1cd9af657013815ec2a5ecd2")
    ]
)
