// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CollectionComposerVIPERExtension",
    platforms: [
        .iOS(.v14),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CollectionComposerVIPERExtension",
            targets: ["CollectionComposerVIPERExtension"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/0x0c/CollectionComposer.git", branch: "main")
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
