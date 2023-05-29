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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.11/SwiftGodot.xcframework.zip",
            checksum: "e3a5c5e05c1ec8a5ddee5ef4d5e438fe9c02ac64f1a2087373564ac850f13c46")
    ]
)
