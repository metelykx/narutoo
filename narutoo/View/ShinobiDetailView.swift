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
            Color("Background").ignoresSafeArea()
            
            // Добавьте ScrollView для прокрутки
            ScrollView(showsIndicators: false) {
                VStack {
                    Text(shinobi.name)
                        .font(.custom("JosefinSans-Bold", size: 30))
                        .foregroundColor(.white)
                        .padding(.top, 40) // Уменьшите верхний отступ
                    
                    Image(shinobi.imageUrl)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 250, maxHeight: 250) // Более адаптивные размеры
                        .padding(.vertical, 20)
                    
                    // Оберните контент в VStack с отступами
                    VStack(alignment: .leading, spacing: 12) {
                        InfoRow(title: "Clan", value: shinobi.clan)
                        InfoRow(title: "Village", value: shinobi.village)
                        InfoRow(title: "Power", value: "\(shinobi.power)")
                        InfoRow(title: "Gendzutsu", value: "\(shinobi.Gendzusu)")
                        InfoRow(title: "Ninjutsu", value: "\(shinobi.Ninjutsu)")
                        InfoRow(title: "Taidzutsu", value: "\(shinobi.Taidzusu)")
                        InfoRow(title: "Element", value: shinobi.element)
                        
                        // Для длинного текста добавьте многострочность
                        Text("Special power: \(shinobi.specialPower)")
                            .foregroundColor(.white)
                            .font(.custom("JosefinSans-Regular", size: 25))
                            .fixedSize(horizontal: false, vertical: true) // Перенос строк
                            .padding(.vertical, 8)
                    }
                    .padding(.horizontal, 16) // Горизонтальные отступы
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.bottom, 40) // Нижний отступ для ScrollView
            }
        }
    }
}

// Вспомогательный компонент для повторяющихся строк
struct InfoRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text("\(title):")
                .font(.custom("JosefinSans-SemiBold", size: 25))
                .foregroundColor(.white)
                .frame(width: 120, alignment: .leading) // Фиксированная ширина для заголовков
            
            Text(value)
                .font(.custom("JosefinSans-Regular", size: 25))
                .foregroundColor(.white)
                .fixedSize(horizontal: false, vertical: true) // Разрешить перенос
        }
    }
}
#Preview {
    ShinobiDetailView(shinobi: Shinobi(id: 1, imageUrl: "naruto", name: "Naruto", clan: "Uzumaki", village: "Konohagakure", power: 95, specialPower: "Nine-tailed Fox Demon (Kyubi) — Inexhaustible Chakra, Sage Mode", intelligence: 75, Ninjutsu: 90, element: "Wind", Gendzusu: 40, Taidzusu: 85))
}
