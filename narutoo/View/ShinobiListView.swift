//
//  ShinoviView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 05.03.2025.
//

import SwiftUI

struct ShinobiListView: View {
    
    
    //здесь, мы подсоединили так скажем ShinobiModelView для того, чтобы автоматически изменять интерфейс при изменении данных
    @ObservedObject var viewModel = ShinobiModelView.shared
    var body: some View {
        ZStack {
            Color("Background", bundle: nil).ignoresSafeArea()
            VStack {
                
                List(viewModel.shinobi)  { shinobi in
                    
                    
                    HStack {
                        Image(shinobi.imageUrl, bundle: nil).resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 125)
                        
                        VStack {
                            Text(shinobi.name)
                            
                            Text(String(shinobi.power))
                            
                            Text(shinobi.intelligence)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ShinobiListView()
}
