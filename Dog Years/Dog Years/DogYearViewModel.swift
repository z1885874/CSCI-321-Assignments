//
//  DogYearViewModel.swift
//  Dog Years
//
//  Created by Alan Garcia on 10/10/22.
//

import Foundation

class DogAgeCalculator: ObservableObject{
    @Published var dogYears = ""
    @Published var results = "0.00"
    
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
    }
}
