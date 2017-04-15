import PackageDescription

let package = Package(
  name: "EbloServer",
  targets: [],
  dependencies: [
    .Package(url: "git@github.com:jindulys/SiYuanKit.git", Version(1,2,32)),
  ]
)
