// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocationSearchCompleterModule",
    platforms: [.iOS(SupportedPlatform.IOSVersion.v14)],
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
