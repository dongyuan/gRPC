// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Streams",
    products: [
        .executable(
        name: "StreamsServer",
        targets: ["StreamsServer"]),
        .executable(
        name: "StreamsClient",
        targets: ["StreamsClient"]),
    ],
    dependencies: [
        .package(
        url: "https://github.com/grpc/grpc-swift.git",
        from: "0.6.0" 
        ),
    ],
    targets: [
    .target(
        name: "StreamsServer",
        dependencies: [
            "SwiftGRPC",
        ]
    ),
    .target(
        name: "StreamsClient",
        dependencies: [
            "SwiftGRPC",
        ]
    ), 
    ]


)
