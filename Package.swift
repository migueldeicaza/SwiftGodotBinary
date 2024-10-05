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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/0.46/SwiftGodot.xcframework.zip",
            checksum: "e75a1524390c118cbdd81bf6e21b3cd6cba0fd5ca8993964af6eb985dfebdebc"),
        .testTarget(name: "SwiftGodotTests", dependencies: ["SwiftGodot"]),
    ]
)
