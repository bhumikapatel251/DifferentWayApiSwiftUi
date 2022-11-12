//
//  RequireUserApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 12/11/22.
//

import SwiftUI

struct RequireUserApiView: View {
    @StateObject var createDataVM  = DataViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(createDataVM.createData, id: \.self, content:{ create in
                    Text(create.first_name)
                    Text(create.email)
                    
                })
                .listStyle(.plain)
                .navigationTitle("DATA")
            }
            .task {
                await createDataVM.fetchData()
            }
        }
    }
}

struct RequireUserApiView_Previews: PreviewProvider {
    static var previews: some View {
        RequireUserApiView()
    }
}
