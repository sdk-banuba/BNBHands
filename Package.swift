// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.7"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.7/BNBHands.zip",
            checksum: "4ee83494f6d1790b119c9ab2ba8a438fe0b6c9e2d85c7469631dbcd3fd9b2e18"
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
