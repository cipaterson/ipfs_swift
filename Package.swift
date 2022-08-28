// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ipfs",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "ipfs_test", targets: ["ipfs"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/pexavc/IPFSKit", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "ipfs",
            dependencies: [
                .product(name: "IPFSKit", package: "IPFSKit"),
            ]),
        .testTarget(
            name: "ipfsTests",
            dependencies: ["ipfs"]),
    ]
)
