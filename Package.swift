// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FileInfo",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "FileInfo",
            targets: ["FileInfo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.5")
    ],
    targets: [
        .executableTarget(
            name: "FileInfo",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "FileInfoTests",
            dependencies: ["FileInfo"]),
    ]
)
