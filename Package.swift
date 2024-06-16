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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/0.43.0/SwiftGodot.xcframework.zip",
            checksum: "779ed475840c92ba9027fc482728cfc2e8bcf589c1e8c56fb050c981242ba717"),
        .testTarget(name: "SwiftGodotTests", dependencies: ["SwiftGodot"]),
    ]
)
