// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocationSearchCompleterModule",
    products: [
        .library(
            name: "LocationSearchCompleterModule",
            targets: ["LocationSearchCompleterModule"]
        )
    ],
    targets: [
        .target(name: "LocationSearchCompleterModule"),
        .testTarget(
            name: "LocationSearchCompleterModuleTests",
            dependencies: ["LocationSearchCompleterModule"]
        )
    ]
)
