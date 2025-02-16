// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResponsiveTextField",
    platforms: [.iOS(.v13), .macOS(.v11)],
    dependencies: [
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.8.1"),
        .package(name: "combine-schedulers", url: "https://github.com/pointfreeco/combine-schedulers.git", from: "0.5.3")
    ],
    targets: [
        .target(
            name: "ResponsiveTextField",
            dependencies: [
                .product(name: "CombineSchedulers", package: "combine-schedulers")
            ]),
        .testTarget(
            name: "ResponsiveTextFieldTests",
            dependencies: ["ResponsiveTextField", "SnapshotTesting"],
            exclude: ["__Snapshots__"]),
    ]
)
