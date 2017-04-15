//
//  BlogParserTest.swift
//  EbloServer
//
//  Created by yansong li on 2017-04-15.
//
//

import Foundation
import Kanna

/// This is a class used for parse a url.
public class BlogParserTest {
  
  /// The string to parse.
  public let urlString: String
  
  /// XPath to article title.
  public let titleXPath: String
  
  /// XPath to next page.
  public let nextPageXPath: String
  
  /// Whether or not be need the base url to composite a valid URL.
  public let basedOnBaseURL: Bool
  
  /// Array contains all the article titles founded.
  private var articles: [String] = []
  
  /// The maximum depth for blog pagination.
  private let maxDepth: Int = 3
  
  init(urlString: String,
       titleXPath: String,
       nextPageXPath: String,
       basedOnBaseURL: Bool) {
    self.urlString = urlString
    self.titleXPath = titleXPath
    self.nextPageXPath = nextPageXPath
    self.basedOnBaseURL = basedOnBaseURL
  }
  
  /// Parse this company's blog.
  // TODO(simonli): Implement
  public func parse() {
    // 1. Find and print all title in current page.
    parse(self.titleXPath) { title in
      print(title)
    }
  }

  // MARK: Priave
  /// Parse `xPath`, with self.urlString.
  private func parse(_ xPath: String, execute:(String) -> ()) {
    guard let url = URL(string: self.urlString) else {
      print("Invalid url")
      return
    }
    if let doc = HTML(url: url, encoding: .utf8) {
      for title in doc.xpath(xPath) {
        if let result = title.text {
          execute(result)
        }
      }
    }
  }
}
