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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.17/SwiftGodot.xcframework.zip",
            checksum: "38c3bc4b2f6deba61ea1e01e0bbe4b7b6916c781702185a4531807a9f4eb807c")
    ]
)
