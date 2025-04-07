//
//  ShinobiVillainListView.swift
//  narutoo
//
//  Created by Denis Ivaschenko on 04.04.2025.
//

import SwiftUI

struct ShinobiVillainListView: View {
    @StateObject var viewModel: ShinobiVillainModelView
    @State private var selectedShinobi: Shinobi?
    @State private var showDetail: Bool = false
    
    init() {
        _viewModel = StateObject(wrappedValue: ShinobiVillainModelView.shared)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Villains")
                        .font(.custom("JosefinSans-Bold", size: 30))
                        .foregroundColor(.white)
                        .padding(.top, 20)
                        .padding(.trailing, 250)
                    
                    Group {
                        if viewModel.isLoading {
                            ProgressView()
                                .scaleEffect(1.5)
                                .padding()
                        } else if let error = viewModel.error {
                            ErrorView(error: error) {
                                viewModel.loadVillain()
                            }
                        } else {
                            contentListView
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
    
    private var contentListView: some View {
        List(viewModel.villains) { shinobi in
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


#Preview {
    ShinobiVillainListView()
}
