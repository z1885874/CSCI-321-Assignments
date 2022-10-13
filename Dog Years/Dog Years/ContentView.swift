//
//  ContentView.swift
//  Dog Years
//
//  Created by Chris Huguelet on 10/9/22.
//Z1885874
//Alan Garcia
//z1944873

import SwiftUI
import UIKit
import Foundation
//app that calculates  the age of your dog, has a text field to enter an
//integer  and prints the result
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
                    .frame(width:300, height:250,
                           alignment: .top)
                    .font(Font.custom("RujisHandwritingFontV20-vrqZ", size: 32, relativeTo: .title))
                    .foregroundColor(.white)
                Spacer()
                //TextField("Enter your dog's age", text: $dogYears)
                //    .backgroundStyle(T##style: ShapeStyle##ShapeStyle)
                TextField("Enter your score", text: $viewModel.dogYears)
                    .position(x:200, y:-100)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numbersAndPunctuation)
                    .padding()
                Spacer()
                Image("dog")//displays the image file
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.white))
                    .position(x:200, y:-50)
                    .padding()
                Spacer()
                Button(action: {//Button that when pressed calls the                            //compute function
                    viewModel.compute(operation: "log")
                }, label: {
                   Text("Human Age")
                })//look of the button
                .frame(width: 150, height: 75)
                .background(Color.white)
                .cornerRadius(50)
                .padding(.vertical, 50)
                HStack{
                    Text(viewModel.resultText2)
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
