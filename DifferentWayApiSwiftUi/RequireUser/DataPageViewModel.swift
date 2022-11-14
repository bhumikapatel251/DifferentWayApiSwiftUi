//
//  DataPageViewModel.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 14/11/22.
//

import Foundation

class DataPageViewModel: ObservableObject {
    private struct Page: Codable{
        var page: Int
        var per_page: Int
        var data: [Data]
    }
    struct Data: Codable, Hashable{
        var id: Int
        var first_name: String
        var email: String
    }

    @Published var urlString = "https://reqres.in/api/users?page=1"
    @Published var page = 0
    @Published var createData:[Data] = []
    func fetchData() async{
       print("we are accessing url \(urlString)")
        
        //create Url
        
        guard let url = URL(string: urlString) else{
            print("could not create url \(urlString)")
              return
        }
        do{
            let (datas,response) = try await URLSession.shared.data(from: url)
            
            //try decode json
            
            guard let data1 = try? JSONDecoder().decode(Page.self, from: datas) else {
                print("coud not decode data")
                return
            }
            self.page = data1.page
            self.page = data1.per_page
            self.createData = data1.data
            
        }catch{
            print("error: url\(urlString) to get data and response")
        }
           
    }
}
