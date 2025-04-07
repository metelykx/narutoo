//
//  ShinobiVillains.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 07.04.2025.
//

import Foundation

class ShinobiVillainModelView: ObservableObject {
    
    //исльзуем сингелтон паттерн проектирования
    static let shared = ShinobiVillainModelView()
    
    @Published var villains: [Shinobi] = []
    
    @Published var isLoading: Bool = false
    
    @Published var isError: Error? = nil
    
    
    private init() {
        loadVillain()
    }
    
    
    func loadVillain() {
        isLoading = true
        isError = nil
        
        
        DispatchQueue.global(qos: .userInitiated).async {
            let villains = [
                Shinobi(id: 16, imageUrl: "kakuzu", name: "Kakuzu", clan: "Absent", village: "Still", power: 93, specialPower: "\("Five hearts") (control of 5 elements, immortality).", intelligence: 95, Ninjutsu: 89, element: "All five elements.", Gendzusu: 0, Taidzusu: 99),
                Shinobi(id: 17, imageUrl: "kisame", name: "Kisame", clan: "Hoshigaki", village: "Kiri", power: 94, specialPower: "Merging with Samehada (chakra absorption)", intelligence: 85, Ninjutsu: 91, element: "Water", Gendzusu: 0, Taidzusu: 100),
                Shinobi(id: 18, imageUrl: "konan", name: "Konan", clan: "Absent", village: "Amegakure", power: 90, specialPower: "Paper techniques", intelligence: 96, Ninjutsu: 95, element: "Water and Wind", Gendzusu: 0, Taidzusu: 40)
            ]
        }
       
    }
}
