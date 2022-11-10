//
//  ContentView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HStack{
                    Text("https://jsonplaceholder.typicode.com/todos")
                        .bold()
                        .foregroundColor(Color.blue)
                    Spacer()
                    NavigationLink(destination: FirstApiView(), label: {
                        Text("Fetch")
                            .bold()
                            .frame(width:100, height:35)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
                //                HStack{
                //                    Text("Fetch JsonApi - 2")
                //                        .bold()
                //                        .foregroundColor(Color.blue)
                //                    Spacer()
                //                   NavigationLink(destination: AppiView(), label: {
                //                       Text("Fetch")
                //                           .bold()
                //                           .frame(width:100, height:35)
                //                           .background(Color.blue)
                //                           .foregroundColor(.white)
                //                           .cornerRadius(10)
                //                   })
                //                }
               }.padding()
                .navigationTitle("Api Calling")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
