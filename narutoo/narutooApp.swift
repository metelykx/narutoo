//
//  narutooApp.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.03.2025.
//

import SwiftUI

@main
struct narutooApp: App {
    //добавил переменную, которая следит за состоянием приложения
    @Environment(\.scenePhase) var scenePhase
    
    @State var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
