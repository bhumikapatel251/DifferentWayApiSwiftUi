//
//  ViewModel.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 11/11/22.
//

import Foundation
import SwiftUI
struct Courses: Hashable, Codable {
    let name: String
    let image: String
}
//struct Data: Hashable, Codable{
//    let data: [User]
//}
class ViewModel: ObservableObject {
    @Published var course: [Courses] = []
    func fetch() {
        guard let url = URL(string: "https://iosacademy.io/api/v1/courses/index.php") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let courses = try JSONDecoder().decode([Courses].self, from: data)
                DispatchQueue.main.async {
                    self?.course = courses
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
        
    }
}
