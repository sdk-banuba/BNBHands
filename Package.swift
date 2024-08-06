// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-75-g381c51d93"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-75-g381c51d93/BNBHands.zip",
            checksum: "f6ce57a919aad734c4a333c6e4dc1d83e6d62f7a60be69be89060204329b934f"
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
