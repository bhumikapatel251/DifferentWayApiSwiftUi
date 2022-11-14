//
//  RequireUserApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 12/11/22.
//

import SwiftUI

struct RequireUserApiView: View {
    @StateObject var createDataVM  = DataPageViewModel()
    var body: some View {
        VStack(alignment: .leading){
            Text("Conent-Type: application/json; charset=utf-8")
            Text("URL: https://reqres.in/api/users?page=1")
            Text("Req:")
            Text("Res:")
            NavigationView{
                List{
                    ForEach(createDataVM.createData, id: \.self, content:{ create in
                        HStack{
                            Text(create.first_name)
                            Spacer()
                            Text(create.email)
                        }
                    })
                    .listStyle(.plain)
                    .navigationTitle("DATA")
                }
                .task {
                    await createDataVM.fetchData()
                }
            }
        } .padding(10)
    }
}

struct RequireUserApiView_Previews: PreviewProvider {
    static var previews: some View {
        RequireUserApiView()
    }
}
