// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Protobuf",
    platforms: [
        .iOS(.v11)
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
        .target(
            name: "Protobuf",
            dependencies: [],
            publicHeadersPath: "include",
            cSettings: [
                .define("GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS"),
                .unsafeFlags(["-fno-objc-arc"])
            ],
            cxxSettings: [
                .define("GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS"),
                .unsafeFlags(["-fno-objc-arc"])
            ]
        )
    ]
)