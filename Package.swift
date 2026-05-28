// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwifterKnife",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "SwifterKnife",
            targets: ["SwifterKnife"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.6.0"),
    ],
    targets: [
        .target(
            name: "SwifterKnife",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit"),
            ],
            path: "SwifterKnife/Classes"
        ),
    ]
)
