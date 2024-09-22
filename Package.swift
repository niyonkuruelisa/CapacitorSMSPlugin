// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AndroidSms",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AndroidSms",
            targets: ["SMSPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "SMSPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/SMSPlugin"),
        .testTarget(
            name: "SMSPluginTests",
            dependencies: ["SMSPlugin"],
            path: "ios/Tests/SMSPluginTests")
    ]
)