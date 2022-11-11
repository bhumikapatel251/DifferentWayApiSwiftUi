//
//  CoursesApiView.swift
//  DifferentWayApiSwiftUi
//
//  Created by Bhumika Patel on 11/11/22.
//

import SwiftUI

struct CoursesApiView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack(alignment:.leading){
            Text("Content-Type: text/html; charset=UTF-8")
            Text("URL: https://iosacademy.io/api/v1/courses/index.php")
            Text("Req:")
            Text("Res:")
            NavigationView{
                List{
                    ForEach(viewModel.course, id: \.self ){ course in
                        HStack{
                            URLImage(urlString: course.image)
                            
                            
                            Text(course.name)
                                .bold()
                            
                            
                        }
                        .padding(3)
                    }
                }
                .navigationTitle("CoursesList")
                .onAppear{
                    viewModel.fetch()
                }
            }
        }
        .padding(10)
    }
}

struct CoursesApiView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesApiView()
    }
}
