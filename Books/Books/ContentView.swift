//
//  ContentView.swift
//  Books
//
//  Created by Alan Garcia on 9/29/22.
//

import SwiftUI

struct ContentView: View {
    let Book = bookData
    var body: some View {
        ScrollView{
            VStack{
                Image("Image")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width:200,
                           height: 250,
                           alignment:.top)
                    .shadow(color: .black.opacity(0.33), radius: 5, x:10, y:10)
                    .offset(y:-25)
                    .padding()
                    .foregroundColor(.accentColor)
                Text(book.authors)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
