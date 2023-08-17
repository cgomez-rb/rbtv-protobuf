// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Protobuf",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Protobuf",
            targets: ["Protobuf"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Protobuf",
            dependencies: [],
            publicHeadersPath: "include"
        )
    ],
    cSettings: [
        .define("GCC_PREPROCESSOR_DEFINITIONS", to: "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1")
    ],
    cxxSettings: [
        .define("GCC_PREPROCESSOR_DEFINITIONS", to: "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1")
    ]
)