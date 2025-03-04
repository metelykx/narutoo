//
//  Shinobi.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.03.2025.
//

import Foundation

struct Shinobi: Identifiable {
    //id - героя
    let id: UUID
    
    // имя героя
    let name: String
    
    // клан героя
    let clan: String
    
    // деревня героя
    let village: String
    
    // сила героя
    let power: Int
    
    // интеллект героя
    let intelligence: Int
    
    // нинджутсу героя
    let Ninjutsu: Int
    
    // стихия героя
    let element: String
    
    // гендюцу героя
    let Gendzusu: String
    
    // тайдзюцу героя
    let Taidzusu: String
    
}
