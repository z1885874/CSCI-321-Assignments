//
//  ContentView.swift
//  Dog Years
//
//  Created by Chris Huguelet on 10/9/22.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var dogYears: String = "1"
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("How old is your dog?")
                    .font(Font.custom("RujisHandwritingFontV20-vrqZ", size: 32, relativeTo: .title))
                    .foregroundColor(.white)
                Spacer()
                //TextField("Enter your dog's age", text: $dogYears)
                //    .backgroundStyle(<#T##style: ShapeStyle##ShapeStyle#>)
                TextField("Enter your score", text: $dogYears)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numbersAndPunctuation)
                    .padding()
                Spacer()
                Image("dog")
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.white))
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
