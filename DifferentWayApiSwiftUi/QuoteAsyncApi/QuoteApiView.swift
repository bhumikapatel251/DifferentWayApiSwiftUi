//
//  QuoteApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import SwiftUI

struct QuoteApiView: View {
    // create  model
    struct Quote: Codable{
        var quote_id: Int
        var quote: String
        var author: String
        var series: String
    }
    // create main showing screen
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct QuoteApiView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteApiView()
    }
}
