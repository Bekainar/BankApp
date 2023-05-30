//
//  HomeView.swift
//  BankApp
//
//  Created by Bekainar on 08.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State private var columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    @State var addCard : Bool = false
    
    var body: some View {
        VStack{
            Header()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0){
                    ForEach(CardModel.sampleCards) { sampleCards in
                        VStack{
                            GeometryReader { geo in
                                CardView(colors: sampleCards.colors, BankName: sampleCards.BankName, CardNumber: sampleCards.cardNumber)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 15), axis: (x: 0, y: 1, z: 0))
                            }
                            .frame(width: 250, height: 250)
                        }
                    }
                }
            }
            
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(CategoryModel.Categories) { item in
                     CategoryItemView(item: item)
                }
            }
            
            Spacer()
            
            Button(action: {
                addCard = true
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.black.opacity(0.4))
                    Text("Open a new card +")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .semibold))
                } .frame(height: 50)
                    .padding()
            } .sheet(isPresented: $addCard) {
                addCardView(addCard: $addCard)
                    .presentationDetents([.medium])
            }
            
        } .background(Color.gray.opacity(0.1))
    }
}

struct Header : View {
    var body: some View {
        HStack{
            Text("Welcome back, \nBekainar!")
                .font(.system(size: 17, weight: .bold))
            Spacer()
            
            ZStack{
                Circle()
                    .fill(Color(red: 120/255, green: 195/255, blue: 113/255))
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                
            }.frame(width: 55, height: 55)
        } .padding()
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
