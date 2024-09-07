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
//        .binaryTarget(
//            name: "Eigen",
//            path: "xcframework/Eigen.xcframework"
//        ),
//        .binaryTarget(
//            name: "EigenLapack",
//            path: "xcframework/EigenLapack.xcframework"
//        )
        .binaryTarget(
            name: "Eigen",
            url: "https://github.com/JuanCRoblesDev/Eigen-SPM/releases/download/v1.0.1/Eigen.xcframework.zip",
            checksum: "534c6a7e126420f07653aac3c86ddeb2c16aab6d50476cd2e7fa08f9b1f3953f"
        ),
        .binaryTarget(
            name: "EigenLapack",
            url: "https://github.com/JuanCRoblesDev/Eigen-SPM/releases/download/v1.0.1/EigenLapack.xcframework.zip",
            checksum: "8e905b388e0c2937aa65bf6d57164eab193de2e15236657404e2509215f3c6cf"
        )
    ],
    swiftLanguageVersions: [.v5],
    cxxLanguageStandard: .cxx17
)
