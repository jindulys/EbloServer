//
//  main.swift
//  EbloServer
//
//  Created by yansong li on 2017-04-15.
//  Copyright © 2017 yansong li. All rights reserved.
//

import Foundation

let testCompany = BlogParserTest(urlString: "https://engineeringblog.yelp.com/",
                                titleXPath: "//article//h3//a",
                                nextPageXPath: "//div[@class='pagination-block']//div[@class='arrange_unit']//a[@class='u-decoration-none next pagination-links_anchor']/@href",
                                basedOnBaseURL: true)
testCompany.parse()
