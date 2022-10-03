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
                    .foregroundColor(.accentColor)
                    .padding()
                
                Text(Book.authors)
                Text(Book.title)
                Text(Book.edition)
                Text(Book.description)
                HStack{
                    ForEach(Book.categories){
                        
                    }
                }
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
