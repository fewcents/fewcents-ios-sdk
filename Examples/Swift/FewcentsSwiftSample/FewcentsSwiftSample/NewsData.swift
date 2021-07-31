//
//  NewsData.swift
//  SampleApp
//
//  Created by Chowdhury Md Rajib  Sarwar on 4/7/21.
//

import UIKit

struct DataSet: Decodable {
    var data: Array<News>?
}
struct News : Decodable {
    var articleUrl: String?
    var imageUrl: String?
    var title: String?
    var descriptions: String?
}
