let swiftSetttings: [SwiftSetting] = [
  .unsafeFlags([
    "-I", "../../include/swift/",
    "-I", "../../include",
  ])
]

let package = Package(
  name: "swiftSwiftCompiler",
  platforms: [
    .macOS(.v10_15)
  ],
  products: [
    .library(name: "swiftASTGen", targets: ["swiftASTGen"]),
    .library(name: "swiftLLVMJSON", targets: ["swiftLLVMJSON"]),
  ],
  dependencies: [
    .package(path: "../../../swift-syntax")
  ],
  targets: [
    .target(
      name: "swiftASTGen",
      dependencies: [
        .product(name: "SwiftDiagnostics", package: "swift-syntax"),
        .product(name: "SwiftSyntax", package: "swift-syntax"),
        .product(name: "SwiftOperators", package: "swift-syntax"),
        .product(name: "SwiftParser", package: "swift-syntax"),
        .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
        "swiftLLVMJSON"
      ],
      path: "Sources/ASTGen",
      exclude: ["CMakeLists.txt"],
      swiftSettings: swiftSetttings
    ),
    .target(
      name: "swiftLLVMJSON",
      dependencies: [],
      path: "Sources/LLVMJSON",
      swiftSettings: swiftSetttings
    ),
  ]
)