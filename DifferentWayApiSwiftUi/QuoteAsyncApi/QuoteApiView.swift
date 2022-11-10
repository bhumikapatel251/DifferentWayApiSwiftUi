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
    func fetchData() async{
        // create url
        
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("hey does not working url")
            return
        }
        
        //fetch data from that url
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // decode that data
            
            if let decodedResponse = try? JSONDecoder().decode([Quote].self, from: data){
                quotes = decodedResponse
            }
        }catch{
            print("data isnt valid")
        }
                
    }

}

struct QuoteApiView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteApiView()
    }
}
