//
//  DataPageModel.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 14/11/22.
//

import Foundation

private struct Page: Codable{
    var page: Int
    var per_page: Int
    var data : [DataResult]
}
struct DataResult: Codable{
    var id: Int
    var first_name: String
    var email: String
}
