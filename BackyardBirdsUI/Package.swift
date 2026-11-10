// swift-tools-version: 6.2

/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The package that defines the app's user interface elements.
*/

import PackageDescription

let package = Package(
    name: "BackyardBirdsUI",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .watchOS(.v26),
        .tvOS(.v26)
    ],
    products: [
        .library(
            name: "BackyardBirdsUI",
            type: .dynamic,
            targets: ["BackyardBirdsUI"]
        )
    ],
    dependencies: [
        .package(path: "../BackyardBirdsData"),
        .package(path: "../LayeredArtworkLibrary")
    ],
    targets: [
        .target(
            name: "BackyardBirdsUI",
            dependencies: [
                .product(name: "BackyardBirdsData", package: "BackyardBirdsData", condition: nil),
                .product(name: "LayeredArtworkLibrary", package: "LayeredArtworkLibrary", condition: nil)
            ],
            path: "."
        )
    ],
    swiftLanguageModes: [.v5]
)
