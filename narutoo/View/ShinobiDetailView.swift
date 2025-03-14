//
//  ShinobiDetailView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 10.03.2025.
//


import SwiftUI

struct ShinobiDetailView: View {
    let shinobi: Shinobi
    var body: some View {
        ZStack {
            Color("Background", bundle: nil).ignoresSafeArea()
            
            VStack {
                Text(shinobi.name)
                    .font(.custom("JosefinSans-Bold", size: 30))
                    .foregroundColor(.white)
                    .padding(.top, 80)
                
                Image(shinobi.imageUrl)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 300)
                        .padding(.top,20)
                
                
                VStack(alignment: .leading) {
                    
                    Text("\(shinobi.name) \(shinobi.clan)")
                        .foregroundColor(.white)
                        .font(.custom("JosefiSans-Regular", size: 25))
                        .padding(.top, 20)
                    
                    Text
                }
                Spacer()
            }
            
        }
    }
}
#Preview {
    ShinobiDetailView(shinobi: Shinobi(id: 1, imageUrl: "naruto", name: "Naruto", clan: "Uzumaki", village: "Konohagakure", power: 95, specialPower: "Nine-tailed Fox Demon (Kyubi) — Inexhaustible Chakra, Sage Mode", intelligence: 75, Ninjutsu: 90, element: "Wind", Gendzusu: 40, Taidzusu: 85))
}
