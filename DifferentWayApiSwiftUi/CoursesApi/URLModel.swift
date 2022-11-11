//
//  URLModel.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 11/11/22.
//

import Foundation
import SwiftUI
struct URLImage: View{
    let urlString: String
    
    @State var data: Data?
    
    var body: some View {
        if let data  = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
            
        }else{
            Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .onAppear{
                    fetchData()
                }
        }
    }
    private func fetchData(){
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}
