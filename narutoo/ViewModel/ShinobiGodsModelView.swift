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
}
