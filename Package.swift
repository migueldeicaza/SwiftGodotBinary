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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.10/SwiftGodot.xcframework.zip",
            checksum: "9d83fbe2e2bcebb5e2b68c2d6ded30f793f05301b2bae67165b4847c387d6c65")
    ]
)
