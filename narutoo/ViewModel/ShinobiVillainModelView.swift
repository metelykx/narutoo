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
                Shinobi(id: 16, imageUrl: <#T##String#>, name: <#T##String#>, clan: <#T##String#>, village: <#T##String#>, power: <#T##Int#>, specialPower: <#T##String#>, intelligence: <#T##Int#>, Ninjutsu: <#T##Int#>, element: <#T##String#>, Gendzusu: <#T##Int#>, Taidzusu: <#T##Int#>)
            ]
        }
       
    }
}
