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
            url: "https://github.com/migueldeicaza/SwiftGodot/releases/download/0.44.0/SwiftGodot.xcframework.zip",
            checksum: "9663c0bb1b3d13a4fc62cb19b9a11027e27a7bbad40445eb63c917f4cf71f614"),
        .testTarget(name: "SwiftGodotTests", dependencies: ["SwiftGodot"]),
    ]
)
