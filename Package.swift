// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CollectionComposerVIPERExtension",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CollectionComposerVIPERExtension",
            targets: ["CollectionComposerVIPERExtension"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/0x0c/CollectionComposer.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "CollectionComposerVIPERExtension",
            dependencies: [
                .product(name: "CollectionComposer", package: "CollectionComposer")
            ],
            path: "Sources"
        )
    ]
)