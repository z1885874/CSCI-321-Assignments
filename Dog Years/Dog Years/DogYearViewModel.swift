//
//  DogYearViewModel.swift
//  Dog Years
//
//  Created by Alan Garcia on 10/10/22.
//

import Foundation
//class DogAgecalculator
//initializers for various variables
//has a function named compute that calculates the age of the dog 
class DogAgeCalculator: ObservableObject{
    @Published var dogYears = ""
    @Published var resultText = ""
    @Published var resultText2 = ""
    @Published var errorMessage = ""
    @Published var showAlert = false
    //function that computes the age of the dog
    //@param result, takes the input and finds the natural log of it
    // times 16 plus 31
    //displays the result of it and some text
    //if there is no valid integer, then it displays an error message
    func compute(operation: String)
    {
        guard let number = Double(dogYears) else{
            errorMessage = "please enter a valid value for the age"
            showAlert = true
            return
        }
        var result: Double
        switch operation {
        default:
            result = (16*log(number))+31
        }
        resultText = String(format:"%.2f", result)
        resultText2 = String("In human years, your dog is ")
    }
  
}
