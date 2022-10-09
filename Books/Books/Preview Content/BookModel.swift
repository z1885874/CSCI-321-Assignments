//
//  BookModel.swift
//  Books
//
//  Created by Alan Garcia on 10/1/22.
//
import Foundation


struct Book: Identifiable
{
    let id = UUID()
    var image: String = ""
    var authors: String = ""
    var title: String = ""
    var edition: String = ""
    var description: String = ""
    var categories: [String] = ["", "", ""]
    var price: Double
    
    
}
