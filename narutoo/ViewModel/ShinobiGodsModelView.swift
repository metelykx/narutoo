//
//  ShinobiGodsModelView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 07.04.2025.
//

import Foundation

class ShinobiGodsModelView: ObservableObject {
    
    
    // singelton
    static let shared = ShinobiGodsModelView()
    
    
    //MARK: variables for information,changes
    
    @Published var gods: [Shinobi] = []
    
    @Published var isLoading: Bool = false
    
    @Published var isError: Error? = nil
    
    //при инициализации идет загрузка
    private init() {
        loadGods()
    }
    
    func loadGods() {
        
        isLoading = true
        isError = nil
        
        func loadGods() {
            isLoading = true
            isError = nil
            
            DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                // Создаем массив Shinobi
                let shinobiGods = [
                    Shinobi(
                        id: 19,
                        imageUrl: "toneri",
                        name: "Toneri",
                        clan: "Ootsutsuki",
                        village: "Absent",
                        power: 70,
                        specialPower: "Tenseigan",
                        intelligence: 60,
                        Ninjutsu: 90,
                        element: "Wind, Light",
                        Gendzusu: 10,
                        Taidzusu: 30
                    ),
                    Shinobi(
                        id: 20,
                        imageUrl: "indra",
                        name: "Indra",
                        clan: "Ootsutsuki",
                        village: "Absent",
                        power: 90,
                        specialPower: "Heir to the Hagoromo Chakra",
                        intelligence: 99,
                        Ninjutsu: 90,
                        element: "Fire, Lightning",  // Исправлено на Lightning
                        Gendzusu: 90,
                        Taidzusu: 90
                    ),
                    Shinobi(
                        id: 21,
                        imageUrl: "hagoromo",
                        name: "Hagoromo",
                        clan: "Ootsutsuki",
                        village: "Absent",
                        power: 101,
                        specialPower: "Rinnegan, Jubi Jinchuuriki, Creation of the Moon",
                        intelligence: 101,
                        Ninjutsu: 101,
                        element: "All elements",
                        Gendzusu: 101,
                        Taidzusu: 80
                    )
                ]
                
                // Имитация задержки загрузки
                Thread.sleep(forTimeInterval: 2)
                
                // Обновление UI в главном потоке
                DispatchQueue.main.async {
                    self?.gods = shinobiGods
                    self?.isLoading = false
                }
            }
        }
        
    }
}
