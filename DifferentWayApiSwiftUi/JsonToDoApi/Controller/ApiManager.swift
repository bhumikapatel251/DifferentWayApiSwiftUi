//
//  ApiManager.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import Foundation
import Foundation
import SwiftUI
class ApiManager: ObservableObject {
    
    @Published var items = [Model]()
    
    
    func fetchData() {
        let api = "https://jsonplaceholder.typicode.com/todos"
        guard let url = URL(string: api) else {
            return
        }
        
        URLSession.shared.dataTask(with: url){
            (data, response, error) in
            do {
                if let data1 = data {
                    let result = try JSONDecoder().decode([Model].self, from: data1)
                    DispatchQueue.main.async {
                        self.items = result
                    }
                } else {
                    print("No data")
                }
            } catch (let error) {
                print(error.localizedDescription)
            }
        }.resume()
    }
  
   
}
