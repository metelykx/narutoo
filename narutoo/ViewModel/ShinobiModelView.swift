//
//  ShinobiModelView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.03.2025.
//

import Foundation

class ShinobiModelView: ObservableObject {
    //сингелтон, для создания единственного экземпляра класса
    static let shared = ShinobiModelView()
    
    var shinobi = [
        Shinobi(id: 1, name: "Naruto Uzumaki", clan: "Uzumaki", village: "Konohagakure", power: 95, specialPower: "Nine-tailed Fox Demon (Kyubi) — Inexhaustible Chakra, Sage Mode", intelligence: 75, Ninjutsu: 90, element: "Wind", Gendzusu: 40, Taidzusu: 85),
        
        Shinobi(id: 2, name: "Sasuke Uchiha", clan: "Uchiha", village: "Konohagakure", power: 95, specialPower: "Eternal Mangekyo Sharingan and Rinegan — Space Control, Amaterasu (Unquenchable flame)", intelligence: 88, Ninjutsu: 95, element: "Fire, Lightning", Gendzusu: 95, Taidzusu: 90),
        
        Shinobi(id: 3, name: "Kakashi Hatake", clan: "Hatake", village: "Konohagakure", power: 90, specialPower: "Sharingan — copying techniques, Kaminu (lightning piercing the sky)", intelligence: 97, Ninjutsu: 92, element: "Lightning", Gendzusu: 85, Taidzusu: 88),
        
        
    ]
}
