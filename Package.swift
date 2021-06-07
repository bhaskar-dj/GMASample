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
                "GoogleInteractiveMediaAds"
            ],
            path: "GMASample",
            exclude: [
                "Info.plist"
            ]
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://raw.githubusercontent.com/dowjones-mobile/external-binaries/master/GoogleMobileAds/7.69.0/GoogleMobileAds.xcframework.zip",
            checksum: "7fad1e8b61bb15e9b7e3865c3f97fbc2b1f32bc42ef3ed01760ebbd98673fe40"
        ),
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            url: "https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.13.0/GoogleInteractiveMediaAds.xcframework.zip",
            checksum: "82b4f70742640d276a10f5fcf9bc71ca9c2ba7f898534fb5fb970b273d526e8d"
        )
    ]
)

