// swift-tools-version: 6.2

/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The package that defines the app's user interface elements.
*/

import PackageDescription

let package = Package(
    name: "LayeredArtworkLibrary",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .watchOS(.v26),
        .tvOS(.v26)
    ],
    products: [
        .library(
            name: "LayeredArtworkLibrary",
            type: .dynamic,
            targets: ["LayeredArtworkLibrary"]
        )
    ],
    dependencies: [
        .package(path: "../BackyardBirdsData")
    ],
    targets: [
        .target(
            name: "LayeredArtworkLibrary",
            dependencies: [
                .product(name: "BackyardBirdsData", package: "BackyardBirdsData", condition: nil)
            ],
            path: "."
        )
    ],
    swiftLanguageModes: [.v5]
)
