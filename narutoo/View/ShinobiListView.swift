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
        List(viewModel.shinobi)  { shinobi in
            
            
            HStack {
                Image(, bundle: <#T##Bundle?#>)
            }
        }
    }
}

#Preview {
    ShinobiListView()
}
