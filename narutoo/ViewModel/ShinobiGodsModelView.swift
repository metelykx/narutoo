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
        
        DispatchQueue.global(qos: .userInitiated).async {
            let shinobiGods = {
                Shinobi(id: 19, imageUrl: <#T##String#>, name: <#T##String#>, clan: <#T##String#>, village: <#T##String#>, power: <#T##Int#>, specialPower: <#T##String#>, intelligence: <#T##Int#>, Ninjutsu: <#T##Int#>, element: <#T##String#>, Gendzusu: <#T##Int#>, Taidzusu: <#T##Int#>)
                Shinobi(id: 20, imageUrl: <#T##String#>, name: <#T##String#>, clan: <#T##String#>, village: <#T##String#>, power: <#T##Int#>, specialPower: <#T##String#>, intelligence: <#T##Int#>, Ninjutsu: <#T##Int#>, element: <#T##String#>, Gendzusu: <#T##Int#>, Taidzusu: <#T##Int#>)
                Shinobi(id: 21, imageUrl: <#T##String#>, name: <#T##String#>, clan: <#T##String#>, village: <#T##String#>, power: <#T##Int#>, specialPower: <#T##String#>, intelligence: <#T##Int#>, Ninjutsu: <#T##Int#>, element: <#T##String#>, Gendzusu: <#T##Int#>, Taidzusu: <#T##Int#>)
            }
        }
        
    }
}
