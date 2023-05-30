//
//  addCardView.swift
//  BankApp
//
//  Created by Bekainar on 09.05.2023.
//

import SwiftUI

struct addCardView: View {
    
    @Binding var addCard : Bool
    @State private var cardNumber = ""
    @State private var expires = ""
    @State private var cvv = ""
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Add a new credit card")
                    .font(.system(size: 25, weight: .semibold))
                Spacer()
                Image(systemName: "xmark")
                    .font(.system(size: 25))
                    .onTapGesture {
                        addCard = false
                    }
            } .padding()
            
            VStack{
                TextField("Card number", text: $cardNumber)
                    .frame(height: 20)
                    .padding(15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                TextField("Expires", text: $expires)
                    .frame(height: 20)
                    .padding(15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                TextField("CVV", text: $cvv)
                    .frame(height: 20)
                    .padding(15)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }.padding()
            
            HStack(){
                Button(action: {}) {
                    Image(systemName: "exclamationmark.circle")
                }
                Text("Manage and Privacy Policy")
                    .font(.system(size: 12))
                    .foregroundColor(.gray.opacity(0.5))
                Spacer()
            } .padding()
            
            Spacer()
            Button(action: {}) {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 52)
                        .foregroundColor(Color("halyk"))
                    Text("Save")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                } .padding()
            }
        }
    }
}

