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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FirstApiView_Previews: PreviewProvider {
    static var previews: some View {
        FirstApiView()
    }
}
