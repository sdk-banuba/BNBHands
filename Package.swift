// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.0-9-g9cd2ba648"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.0-9-g9cd2ba648/BNBHands.zip",
            checksum: "36298a9a0f334953dd3497053edb29aecdc7cb2bd454e58c806b8e256b603f64"
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
