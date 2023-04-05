// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mParticle-Apptimize",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "mParticle-Apptimize",
            targets: ["mParticle-Apptimize"])
    ],
    dependencies: [
        .package(name: "mParticle-Apple-SDK",
                 url: "https://github.com/mParticle/mparticle-apple-sdk",
                 .upToNextMajor(from: "8.0.0")),
        .package(name: "Apptimize",
                 url: "https://github.com/urbanairship/apptimize-ios-kit",
                 .upToNextMajor(from: "3.5.17"))
    ],
    targets: [
        .target(
            name: "mParticle-Apptimize",
            dependencies: [
                .byName(name: "mParticle-Apple-SDK"),
                .product(name: "Apptimize", package: "Apptimize")
            ],
            path: "mParticle-Apptimize"
        )
    ]
)
