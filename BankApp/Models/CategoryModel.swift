//
//  CategoryModel.swift
//  BankApp
//
//  Created by Bekainar on 08.05.2023.
//

import Foundation


struct CategoryModel : Identifiable {
    
    let id = UUID().uuidString
    
    let title : String
    let color : String
    let percent : Int
    
    static let Categories = [
        CategoryModel(title: "Foods", color: "halyk", percent: 45),
        CategoryModel(title: "Transport", color: "halyk", percent: 30),
        CategoryModel(title: "Education", color: "halyk", percent: 15),
        CategoryModel(title: "Other", color: "halyk", percent: 10)
    ]
    
}
