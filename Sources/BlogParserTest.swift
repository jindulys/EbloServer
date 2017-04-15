//
//  BlogParserTest.swift
//  EbloServer
//
//  Created by yansong li on 2017-04-15.
//
//

import Foundation

/// This is a class used for parse a url.
public class BlogParserTest {
  
  /// The string to parse.
  public let urlString: String
  
  init(urlString: String) {
    self.urlString = urlString
  }
  
  /// Parse this company's blog.
  // TODO(simonli): Implement
  public func parse() {
    print(self.urlString)
  }
}
