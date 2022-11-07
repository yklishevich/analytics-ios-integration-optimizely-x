// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "analytics-ios-integration-optimizely-x",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Segment-Optimizely-X",
            targets: ["Segment-Optimizely-X"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/segmentio/analytics-ios", from: "4.0.0"),
		.package(url: "https://github.com/optimizely/swift-sdk.git", from: "3.10.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Segment-Optimizely-X",
            dependencies: [
                .product(name: "Segment", package: "analytics-ios"),
                .product(name: "Optimizely", package: "swift-sdk"),
            ],
            path: "Segment-Optimizely-X/",
            sources: ["Classes"],
            publicHeadersPath: "Classes",
            cSettings: [
                .headerSearchPath("Classes")
            ]
        )
    ]
)
