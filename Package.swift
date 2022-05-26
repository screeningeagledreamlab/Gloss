// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Gloss",
    products: [
        .library(
            name: "Gloss",
            targets: ["Gloss"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Gloss",
            path: "Sources",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "GlossTests",
            dependencies: ["Gloss"],
            path: "Tests",
            exclude: ["Info.plist", "Test Models"]),
    ]
)
