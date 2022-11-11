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
                VStack{
                    Text("ContentType - application/json; charset=utf-8")
                        .bold()
                        .foregroundColor(Color.blue)
                    
                    NavigationLink(destination: FirstApiView(), label: {
                        Text("JsonApi")
                            .bold()
                            .frame(width:100, height:35)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            
                    })
                }
                .padding(.leading,50)
                Divider()
                VStack{
                    Text("ContentType - application/json; charset=utf-8")
                        .bold()
                        .foregroundColor(Color.blue)
                                   
                    NavigationLink(destination: QuoteApiView(), label: {
                        Text("QuoteApi")
                            .bold()
                            .frame(width:100, height:35)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        })
                }
                .padding(.leading,50)
                Divider()
                VStack{
                    Text("ContentType - text/html; charset=UTF-8")
                        .bold()
                        .foregroundColor(Color.blue)
                                   
                    NavigationLink(destination: CoursesApiView(), label: {
                        Text("CoursesApi")
                            .bold()
                            .frame(width:100, height:35)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        })
                }
                .padding(.leading)
               }.padding()
                .navigationTitle("Api Calling")
                .navigationBarBackButtonHidden(true)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
