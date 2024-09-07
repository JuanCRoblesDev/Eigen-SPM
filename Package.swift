// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Eigen",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Eigen",
            targets: ["Eigen"]
        ),
        .library(
            name: "EigenLapack",
            targets: ["EigenLapack"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "Eigen",
            path: "xcframework/Eigen.xcframework"
        ),
        .binaryTarget(
            name: "EigenLapack",
            path: "xcframework/EigenLapack.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5],
    cxxLanguageStandard: .cxx17
)
