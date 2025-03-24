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
    
    //добавил флаг для отслежки активности приложения
    @State var isAppActive: Bool = true
    var body: some Scene {
        WindowGroup {
            ZStack {
                
                //основная view
                ContentView()
                
                    //прозрачность зависима от isAppActive
                    .opacity(isAppActive ? 1 : 0)
                    
                    //анимация, которая будет появлятся при нужном состоянии
                    .animation(.default, value: isAppActive)
                
                LoadView()
                    .opacity(isAppActive ? 0 : 1)
                    .animation(.default, value: isAppActive)
            }
        }.onChange(of: scenePhase) { newValue in
            switch newValue {
            case .active:
                self.isAppActive = true
            case .inactive:
                self.isAppActive = false
            @unknown default:
                    break
            }
        }
    }
}
