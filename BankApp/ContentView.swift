//
//  ContentView.swift
//  BankApp
//
//  Created by Bekainar on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab : Int = 1
    
    enum Tab{
        case home
        case history
        case settings
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tabItem {
                        Label("Main", systemImage: "house")
                } .tag(Tab.home)
            historyView()
                .tabItem{
                    Label("Send", systemImage: "creditcard")
                } .tag(Tab.history)
            settingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                } .tag(Tab.settings)
        } .tint(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
