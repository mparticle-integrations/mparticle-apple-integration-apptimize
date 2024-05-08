// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "mParticle-Apptimize",
    platforms: [ .iOS(.v11) ],
    products: [
        .library(
            name: "mParticle-Apptimize",
            targets: ["mParticle-Apptimize"]),
    ],
    dependencies: [
      .package(url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.22.0")),
      .package(url: "https://github.com/urbanairship/apptimize-ios-kit",
               .upToNextMajor(from: "3.5.25")),
    ],
    targets: [
        .target(
            name: "mParticle-Apptimize",
            dependencies: [
              .product(name: "mParticle-Apple-SDK", package: "mparticle-apple-sdk"),
              .product(name: "Apptimize", package: "apptimize-ios-kit"),
            ],
            path: "mParticle-Apptimize",
            exclude: ["Info.plist"],
            resources: [.process("PrivacyInfo.xcprivacy")],
            publicHeadersPath: ".")
    ]
)
