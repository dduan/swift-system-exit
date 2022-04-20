// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "swift-system-exit",
    products: [
        .library(name: "SystemExit", targets: ["SystemExit"]),
    ],
    targets: [
        .target(name: "SystemExit", path: ".", sources: ["exit.swift"]),
    ]
)
