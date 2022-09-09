// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "NextResponderTextField",
    products: [
        .library(
            name: "NextResponderTextField",
            targets: ["NextResponderTextField"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NextResponderTextField",
            dependencies: [],
	    path: "Sources"),
        .testTarget(
            name: "NextResponderTextFieldTests",
            dependencies: ["NextResponderTextField"])
    ]
)
