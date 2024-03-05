// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MicroApp1",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MicroApp1",
            targets: ["MicroApp1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AndrewBrehmAtDialexa/Navigation", from: "1.0.1"),
        .package(url: "https://github.com/AndrewBrehmAtDialexa/CommonUI", from: "1.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MicroApp1",
            dependencies: [
                .product(name: "Navigation", package: "Navigation"),
                .product(name: "CommonUI", package: "CommonUI"),
            ]),
        .testTarget(
            name: "MicroApp1Tests",
            dependencies: ["MicroApp1"]),
    ])
