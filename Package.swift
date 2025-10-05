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
            dependencies: [],
            path: "Sources/ShortID"  // ✅ 显式声明源码路径
        // ),
        // .testTarget(
        //     name: "ShortIDTests",
        //     dependencies: ["ShortID"],
        //     path: "Tests/ShortIDTests" // ✅ 显式声明测试路径
        )
    ]
)