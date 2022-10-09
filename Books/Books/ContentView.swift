//
//  ContentView.swift
//  Books
//
//  Created by Alan Garcia on 9/29/22.
//z1944873
// Sammy Huguelet
//Z1885874

import SwiftUI

struct ContentView: View {
    let Book = bookData
    var body: some View {
        ScrollView{ //vertical stack that
            VStack{ //allows scrolling
                Image("Image")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width:200,
                           height: 250,
                           alignment:.top)
                    .shadow(color: .black.opacity(0.33), radius: 5, x:10, y:10)
                    .offset(y:-25)
                    .foregroundColor(.accentColor)
                    .padding()
//access the bookdata file to output the //date
                Text(Book.authors)
                    .foregroundColor(Color.gray)
                Text(Book.title).font(.headline).bold()
                Text(Book.edition).font(.subheadline)
                Text(Book.description)
                    .foregroundColor(Color.gray)
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
