//
//  CardView.swift
//  BankApp
//
//  Created by Bekainar on 08.05.2023.
//

import SwiftUI

struct CardView: View {
    
    var colors : [Color]
    var BankName : String
    var CardNumber : String
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(BankName)
                    .font(.system(size: 19, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                Spacer()
                
                HStack{
                    Text(CardNumber)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                    Image("mastercard")
                        .resizable()
                        .frame(width: 55, height: 55)
                    
                }
            } .padding(16)
        }
        .frame(width: 242, height: 153)
        .background(LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15)
        .padding()
        .shadow(color: .black.opacity(0.5),radius: 5, x: 5, y: 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(colors: [Color("kaspi")], BankName: "Kaspi", CardNumber: "6574 ••••")
    }
}
