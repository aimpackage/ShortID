// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ShortID",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "ShortID",
            targets: ["ShortID"]
        ),
    ],
    targets: [
        .target(
            name: "ShortID",
            dependencies: []
        ),
        .testTarget(
            name: "ShortIDTests",
            dependencies: ["ShortID"]
        )
    ]
)