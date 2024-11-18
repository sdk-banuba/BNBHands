// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-186-g71865c20be"

let package = Package(
    name: "BNBHands",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHands",
            targets: [
                "BNBHands",
                "BNBHands_BNBSdkCore",
                "BNBHands_BNBEffectPlayer",
                "BNBHands_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBHands",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-186-g71865c20be/BNBHands.zip",
            checksum: "b83272cccd16d16741b1d9772250ee35995d6ce25e735f2fd99597ab649f907e"
        ),
        .target(
            name: "BNBHands_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHands_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHands_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
