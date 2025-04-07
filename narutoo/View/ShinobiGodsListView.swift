//
//  ShinobiGodsListView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.04.2025.
//
//
//  ShinobiGodsListView.swift
//  narutoo
//

import SwiftUI

struct ShinobiGodsListView: View {
    @StateObject var viewModel = ShinobiGodsModelView.shared
    @State private var selectedShinobi: Shinobi?
    @State private var showDetail = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background").ignoresSafeArea()
                
                VStack {
                    Text("Gods")
                        .font(.custom("JosefinSans-Bold", size: 30))
                        .foregroundColor(.white)
                        .padding(.top, 20)
                        .padding(.trailing, 250)
                    
                    Group {
                        if viewModel.isLoading {
                            ProgressView()
                                .scaleEffect(1.5)
                                .padding()
                        } else if let error = viewModel.isError {
                            ErrorView(error: error) {
                                viewModel.loadGods()
                            }
                        } else {
                            List(viewModel.gods) { shinobi in
                                ShinobiRow(shinobi: shinobi)
                                    .onTapGesture {
                                        selectedShinobi = shinobi
                                        showDetail = true
                                    }
                                    .listRowBackground(Color.clear)
                            }
                            .listStyle(.plain)
                        }
                    }
                }
            }
            .sheet(isPresented: $showDetail) {
                if let shinobi = selectedShinobi {
                    ShinobiDetailView(shinobi: shinobi)
                }
            }
        }
    }
}

#Preview {
    ShinobiGodsListView()
}
