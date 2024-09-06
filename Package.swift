// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FabricLink",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FabricLink",
            targets: ["FabricLink"]
        )
    ],
    targets: [
        .target(
            name: "FabricLink",
            dependencies: [],
            sources: ["FabricLink.swift", "FabricConstants.swift"]
        )
    ]
)
