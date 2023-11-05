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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/0.24/SwiftGodot.xcframework.zip",
            checksum: "7d48f1b9d442fc23b7c3a1319cad9009ec015d72a00b51efa08ef838955d48c2")
    ]
)
