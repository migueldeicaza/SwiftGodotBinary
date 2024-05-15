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
            url: "https://github.com/xibbon/Xogot/releases/download/0.1/SwiftGodot.xcframework.zip",
            checksum: ""),
        .testTarget(name: "SwiftGodotTests", dependencies: ["SwiftGodot"]),
    ]
)
