// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "SwiftLocalizedStrings",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "StringResource", targets: ["StringResource"]),
        .library(name: "StringSource", targets: ["StringSource"]),
        .library(name: "StringCatalog", targets: ["StringCatalog"]),
        .library(name: "SwiftIdentifier", targets: ["SwiftIdentifier"]),
        .library(name: "StringExtractor", targets: ["StringExtractor"]),
        .library(name: "StringValidator", targets: ["StringValidator"])
    ],
    targets: [
        .target(
            name: "StringResource"
        ),

        .target(
            name: "StringSource",
            dependencies: [
                .target(name: "StringCatalog"),
            ]
        ),

        .target(
            name: "StringCatalog"
        ),

        .target(
            name: "SwiftIdentifier"
        ),

        .target(
            name: "StringExtractor",
            dependencies: [
                .target(name: "StringCatalog"),
                .target(name: "StringResource"),
                .target(name: "StringSource"),
                .target(name: "SwiftIdentifier")
            ]
        ),

        .target(
            name: "StringValidator",
            dependencies: [
                .target(name: "StringResource")
            ]
        ),

        .testTarget(
            name: "StringCatalogTests",
            dependencies: [
                .target(name: "StringCatalog")
            ],
            resources: [
                .copy("__Fixtures__")
            ]
        )
    ],
    swiftLanguageVersions: [.v5, .version("6")]
)

// https://swiftpackageindex.com/swiftpackageindex/spimanifest/0.19.0/documentation/spimanifest/validation
// On CI, we want to validate the manifest, but nobody else needs that.
if ProcessInfo.processInfo.environment.keys.contains("VALIDATE_SPI_MANIFEST") {
    package.dependencies.append(
       .package(url: "https://github.com/SwiftPackageIndex/SPIManifest.git", from: "0.12.0")
    )
}