// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "OpenAPIReflection",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "OpenAPIReflection",
            targets: ["OpenAPIReflection"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattpolzin/OpenAPIKit.git", branch: "release/3_0"),
        .package(url: "https://github.com/mattpolzin/Sampleable.git", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "OpenAPIReflection",
            dependencies: ["OpenAPIKit", "Sampleable"]),
        .testTarget(
            name: "OpenAPIReflectionTests",
            dependencies: ["OpenAPIReflection"]),
    ]
)
