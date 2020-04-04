// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLibssh",
    products: [
        .library(name: "SwiftLibssh", targets: ["SwiftLibssh"])
    ],
    targets:[
        .systemLibrary(
            name: "SwiftLibssh",
            pkgConfig: "libssh",
            providers: [
                .brew(["libssh"]),
                .apt(["libssh-dev"])
            ]
        )
    ]
)
