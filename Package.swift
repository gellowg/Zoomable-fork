// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Zoomable",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Zoomable",
            targets: ["Zoomable"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .branch("master")),
        .package(url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", .exact("2.2.7"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Zoomable",
            dependencies: ["SDWebImage", "SDWebImageSwiftUI"]),
        .testTarget(
            name: "ZoomableTests",
            dependencies: ["Zoomable"]),
    ]
)
