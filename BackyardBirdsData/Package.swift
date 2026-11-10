// swift-tools-version: 6.2

/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The package that defines the app's data.
*/

import PackageDescription

let package = Package(
    name: "BackyardBirdsData",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .watchOS(.v26),
        .tvOS(.v26)
    ],
    products: [
        .library(
            name: "BackyardBirdsData",
            type: .dynamic,
            targets: ["BackyardBirdsData"]
        )
    ],
    targets: [
        .target(
            name: "BackyardBirdsData",
            path: "."
        )
    ],
    swiftLanguageModes: [.v5]
)
