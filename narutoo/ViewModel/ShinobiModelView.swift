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
        
        Shinobi(id: 4, name: "Itachi Uchiha", clan: "Uchiha", village: "The renegade ninja", power: 96, specialPower: "Tsukuyomi (an illusion that breaks the mind in seconds), Susanoo (a giant warrior defender)", intelligence: 100, Ninjutsu: 94, element: "Fire", Gendzusu: 100, Taidzusu: 85),
        
        Shinobi(id: 5, name: "Gaara", clan: "Absent", village: "Sunagakure", power: 92, specialPower: "Absolute sand protection — Autonomous Shield, Sand Tsunami", intelligence: 85, Ninjutsu: 88, element: "Sand", Gendzusu: 50, Taidzusu: 75),
        
        Shinobi(id: 6, name: "Jiraiya", clan: "Absent", village: "Konohagakure", power: 94, specialPower: "Sage Mode — Enhance all abilities, Summon giant toads", intelligence: 89, Ninjutsu: 98, element: "Fire, Water", Gendzusu: 80, Taidzusu: 90),
        
        Shinobi(id: 7, name: "Nagato Uzumaki", clan: "Uzumaki", village: "Hidden Rain Village", power: 98, specialPower: "Six Paths of the Pane — control six bodies with unique skills.", intelligence: 95, Ninjutsu: 100, element: "All the elements", Gendzusu: 90, Taidzusu: 80),
        
        
    ]
}
