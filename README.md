# swift-system-exit

A cross-platform wrapper for the `exit` C standard API. It provides Swift conventional style adjustment, and
eliminates the need for `#if os` imports.

This package pretends to be part of [apple/swift-system](), and aspire to be subsumed by it one day.

[apple/swift-system]: https://github.com/apple/swift-system

## Install

This is a standard SwiftPM package. Include it the standard way in your manifest:

```swift
let package = Package(
    // name, platforms, products, etc.
    dependencies: [
        .package(url: "https://github.com/dduan/swift-system-exit", from: "1.0.0"),
        // other dependencies
    ],
    targets: [
        .target(name: "MyTarget", dependencies: [
            .product(name: "SystemExit", package: "swift-system-exit"),
        ]),
        // other targets
    ]
)
```

## LICENSE

See [LICENSE](LICENSE.txt) for license information. 
