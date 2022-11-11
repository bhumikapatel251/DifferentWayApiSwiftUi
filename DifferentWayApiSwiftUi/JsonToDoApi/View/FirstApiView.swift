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
        VStack(alignment: .leading){
            Text("Conent-Type: application/json; charset=utf-8")
            Text("URL: https://jsonplaceholder.typicode.com/todos")
           
                Text("Req:")
                  
                Text("Res:")
         
           
            NavigationView{
             //   Text("dgdfbgdf")
                List(viewModel.items, id: \.id) {
                    item in
                    VStack(alignment: .leading){
                        
                        Text(item.title)
                        Text(item.completed.description)
                            .font(.system(size: 11))
                            .foregroundColor(.gray)
                    }
                    
                }
                .navigationTitle("JsonToDoApi")
                
            }
          //  .padding(.bottom,100)
           
        }.onAppear(perform: {
            viewModel.fetchData()
        })
        .padding(10)
       // .padding(.bottom,-50)
    }
}

struct FirstApiView_Previews: PreviewProvider {
    static var previews: some View {
        FirstApiView()
    }
}
