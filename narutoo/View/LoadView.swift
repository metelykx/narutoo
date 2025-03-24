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
                LoadImage()
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
//-MARK: картинка
struct LoadImage: View {
    var body: some View {
        VStack {
            Image("naruto", bundle: nil)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
        }
    }
}
