//
//  QuoteApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import SwiftUI
// create  model
struct Quote: Codable{
    var quote_id: Int
    var quote: String
    var author: String
    var series: String
}
// create main showing screen
struct QuoteApiView: View {
    @State private var quotes = [Quote]()
    var body: some View {
        NavigationView{
            List(quotes, id: \.quote_id){ quote in
                VStack(alignment: .leading){
                    Text(quote.author)
                        .font(.headline)
                    .foregroundColor(.blue)
                    Text(quote.quote)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Quotes")
            .task {
                await fetchData()
            }
        }
    }
}

struct QuoteApiView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteApiView()
    }
}
