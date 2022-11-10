//
//  FirstApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import SwiftUI

struct FirstApiView: View {
    @ObservedObject var viewModel = ApiManager()
    var body: some View {
        VStack {
            List(viewModel.items, id: \.id) {
                item in
                VStack(alignment: .leading){
      
                    Text(item.title)
                    Text(item.completed.description)
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                }
                
            }
        }.onAppear(perform: {
            viewModel.fetchData()
        })
    }
}

struct FirstApiView_Previews: PreviewProvider {
    static var previews: some View {
        FirstApiView()
    }
}
