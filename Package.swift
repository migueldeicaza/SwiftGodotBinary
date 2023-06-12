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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.16/SwiftGodot.xcframework.zip",
            checksum: "bb78b06776192ee43d743b8ba8614601c8476b0c6876db9c0f95d5bbd900afef")
    ]
)
