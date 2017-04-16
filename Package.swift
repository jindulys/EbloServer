import PackageDescription

let package = Package(
  name: "EbloServer",
  targets: [],
  dependencies: [
    .Package(url: "git@github.com:jindulys/SiYuanKit.git", majorVersion:1),
    .Package(url: "https://github.com/tid-kijyun/Kanna.git", majorVersion: 2),
  ]
)
