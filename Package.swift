// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SweetAlert",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SweetAlert", targets: ["SweetAlert"])
    ],
    targets: [
        .target(
            name: "SweetAlert",
            path: "SweetAlert",
            exclude: ["AppDelegate.swift", "ViewController.swift", "Base.lproj", "Images.xcassets", "Info.plist", "logo_big.png", "SweetAlert.png"],
            sources: ["SweetAlert.swift"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
