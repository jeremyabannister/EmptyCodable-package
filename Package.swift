// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "EmptyCodable-package",
    products: [
        .library(
            name: "EmptyCodable-module",
            targets: ["EmptyCodable-module"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "EmptyCodable-module",
            dependencies: []
        ),
        .testTarget(
            name: "EmptyCodable-module-tests",
            dependencies: ["EmptyCodable-module"]
        ),
    ]
)
