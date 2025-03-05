//
//  ShinoviView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 05.03.2025.
//

import SwiftUI

struct ShinobiListView: View {
    
    @ObservedObject var viewModel = ShinobiModelView.shared
    var body: some View {
        Text("salam")
    }
}

#Preview {
    ShinobiListView()
}
