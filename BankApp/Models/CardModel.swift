//
//  CardModel.swift
//  BankApp
//
//  Created by Bekainar on 08.05.2023.
//

import Foundation
import SwiftUI

struct CardModel : Identifiable {
    var id = UUID().uuidString
    var BankName : String
    var cardNumber : String
    var colors : [Color]
    
    static let sampleCards : [CardModel] = [
        CardModel(BankName: "Kaspi", cardNumber: "4400 ••••", colors: [Color("kaspi")]),
        CardModel(BankName: "Halyk", cardNumber: "5674 ••••", colors: [Color("halyk")]),
        CardModel(BankName: "Jusan", cardNumber: "4200 ••••", colors: [Color("jusan")]),
        CardModel(BankName: "Sberbank", cardNumber: "9876 ••••", colors: [Color("sberbank")])
    ]
}
