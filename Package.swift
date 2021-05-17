// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GMASample",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "GMASample", targets: ["GMASample"])
    ],
    targets: [
        .target(
            name: "GMASample",
            dependencies: [
                "GoogleMobileAds",
            ],
            path: "GMASample",
            exclude: [
                "Frameworks/",
                "Info.plist"
            ]
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://raw.githubusercontent.com/dowjones-mobile/external-binaries/master/GoogleMobileAds/7.69.0/GoogleMobileAds.xcframework.zip",
            checksum: "7fad1e8b61bb15e9b7e3865c3f97fbc2b1f32bc42ef3ed01760ebbd98673fe40"
        )
    ]
)

