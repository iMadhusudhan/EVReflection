// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EVReflection",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_11),
        .tvOS(.v9),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "EVReflection", targets: ["EVReflection"]),
        .library(name: "EVReflectionXML", targets: ["EVReflectionXML"])
    ],
    dependencies: [
        .package(url: "https://github.com/slashlos/XMLDictionary.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "EVReflection",
            path: "Source",
            exclude: ["XML", "Realm", "CloudKit", "CoreData", "Alamofire"]
        ),
        .target(
            name: "EVReflectionXML",
            dependencies: ["EVReflection", "XMLDictionary"],
            path: "Source/XML"
        )
    ],
    swiftLanguageVersions: [.v5]
)
