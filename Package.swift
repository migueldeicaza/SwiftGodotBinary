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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/v0.15/SwiftGodot.xcframework.zip",
            checksum: "53cb272cfb0c8ca0a679c6d42a42320a1ff2514c7131233703ed853444fb61e8")
    ]
)
