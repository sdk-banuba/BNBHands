// swift-tools-version:5.9
import PackageDescription

let bnbPackageVersion: Version = "1.18.7"

let package = Package(
    name: "BNBHands",
    platforms: [
        .iOS(.v15)
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.7/BNBHands.zip",
            checksum: "25041a742698ed25b5a630d29475066acd65c1553bf6733c8ab22dbe20c20db2"
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
