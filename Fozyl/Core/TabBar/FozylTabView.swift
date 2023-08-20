//
//  FozylTabView.swift
//  Fozyl
//
//  Created by GAPT on 20/08/23.
//

import SwiftUI

struct FozylTabView: View {
    
    // Estados
    @State private var selectedTab = 0
    
    var body: some View {
        
        // ayuda a hacer un seguimiento de que pestania esta activa
        TabView(selection: $selectedTab) {
            
            // items
            HomeView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedTab = 1}
                .tag(1)
            
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear{ selectedTab = 2 }
                .tag(2)
            
        }
        .tint(.black)
    }
}

struct FozylTabView_Previews: PreviewProvider {
    static var previews: some View {
        FozylTabView()
    }
}
