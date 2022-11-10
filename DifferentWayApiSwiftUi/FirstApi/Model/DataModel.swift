//
//  DataModel.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import Foundation
struct Model: Decodable {
    let id: Int
    let userId: Int
    let title: String
    let completed: Bool
}

