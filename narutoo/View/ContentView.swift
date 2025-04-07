//
//  ContentView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: марка TabBar
        TabView {
            
            //шиноби
            ShinobiListView()
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Heroes")
                 }
            
            //злодеи
            ShinobiVillainListView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Villains")
                }
            
            //боги
            ShinobiGodsListView()
                .tabItem {
                    Image(systemName: "sun.max")
                    Text("Gods")
                }
        } .tint(.red) // Цвет активной иконки
            .toolbarBackground(.black, for: .tabBar) // Цвет фона
            .toolbarColorScheme(.dark, for: .tabBar) // Стиль иконок
        
    }
}

#Preview {
    ContentView().preferredColorScheme(.dark) // Добавьте при необходимости
}
