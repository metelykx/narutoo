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
    
    @Published var shinobi: [Shinobi] = []
    
    @Published var isLoading: Bool = false
    
    @Published var isError: Error? = nil
    
    
    private init() {
        loadVillain()
    }
    
    
    func loadVillain() {
        
    }
}
