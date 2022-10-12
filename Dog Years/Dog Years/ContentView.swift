//
//  ContentView.swift
//  Dog Years
//
//  Created by Chris Huguelet on 10/9/22.
//Alan Garcia 

import SwiftUI
import UIKit
import Foundation

struct ContentView: View {
    @StateObject private var viewModel = DogAgeCalculator()
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
                //    .backgroundStyle(T##style: ShapeStyle##ShapeStyle)
                TextField("Enter your score", text: $viewModel.dogYears)
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
                Button(action: {
                    viewModel.compute(operation: "log")
                }, label: {
                   Text("Human Age")
                })
                .frame(width: 100, height: 50)
                .background(Color.white)
                .cornerRadius(12)
                HStack{
                    Text("In human years, your dog is ")
                    Text(viewModel.resultText)
                    
                }
                
            }
        }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(
                title: Text("Error"),
                message: Text(viewModel.errorMessage)
            )
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
