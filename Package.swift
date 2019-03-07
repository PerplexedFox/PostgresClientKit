// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "PostgresClientKit",
    products: [
        .library(
            name: "PostgresClientKit",
            targets: ["Postgres"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/BlueSocket.git", from: "1.0.0"),
        .package(url: "https://github.com/IBM-Swift/BlueSSLService", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Postgres",
            dependencies: ["Socket", "SSLService"]),
        .testTarget(
            name: "PostgresClientKitTests",
            dependencies: ["Postgres"]),
    ]
)