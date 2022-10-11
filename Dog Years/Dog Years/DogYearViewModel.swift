//
//  DogYearViewModel.swift
//  Dog Years
//
//  Created by Alan Garcia on 10/10/22.
//

import Foundation

class DogAgeCalculator: ObservableObject{
    @Published var dogYears = ""
    @Published var resultText = "0.00"
    
    @Published var errorMessage = ""
    @Published var showAlert = false
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
            result = 16*log(number)+31
        }
        resultText = String(format:"%.2f", "In human years, your dog is ", result)
        
    }
  
}
