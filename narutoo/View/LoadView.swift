//
//  LoadView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 24.03.2025.
//


import SwiftUI

struct LoadView: View {
    var body: some View {
        ZStack {
            Color("Background", bundle: nil).ignoresSafeArea()
            
            VStack {
                LoadText()
            }
            
        }
    }
}
#Preview {
    LoadView()
}

//-MARK: Название 
struct LoadText: View {
    var body: some View {
        VStack {
            Text("Shipuden's Heroes")
                .font(.custom("JosefinSans-Bold", size: 35))
                .foregroundStyle(.white)
            
        }
    }
}
