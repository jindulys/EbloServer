import PackageDescription

let package = Package(
  name: "EbloServer",
  targets: [],
  dependencies: [
    .Package(url: "git@github.com:jindulys/SiYuanKit.git", Version(1,2,32)),
    .Package(url: "https://github.com/honghaoz/Ji.git", majorVersion: 2), 
  ]
)
