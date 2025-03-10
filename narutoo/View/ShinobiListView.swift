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
                        
                        VStack(alignment: .leading) {
                            Text(shinobi.name).padding(.bottom,2)
                                .foregroundColor(.white)
                                .font(.custom("JosefinSans-Regular", size: 20))
                            
                            
                            Text("Power:  \(String(shinobi.power))/100").padding(.bottom,2)
                                .foregroundColor(.white)
                                .font(.custom("JosefinSans-Regular", size: 20))
                            
                            Text("Intelligence: \(String(shinobi.intelligence))/100")
                                .foregroundColor(.white)
                                .font(.custom("JosefinSans-Regular", size: 20))
                        }
                    }
                    .overlay(
                            Rectangle()
                                .fill(Color.gray.opacity(1.5))
                                .frame(height: 1)
                                .padding(.leading, 120) // Выравнивание под текстом
                                .padding(.trailing, 20),
                            alignment: .bottom
                        )
            
                    .listRowBackground(Color.clear)
                }
               
            }.listStyle(.plain)
           
        }
    }
}

#Preview {
    ShinobiListView()
}
