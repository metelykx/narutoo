import SwiftUI

struct ShinobiListView: View {
    @StateObject var viewModel: ShinobiModelView
    @State private var selectedShinobi: Shinobi?
    @State private var showDetail: Bool = false
    
    init() {
        // Инициализация через shared instance
        _viewModel = StateObject(wrappedValue: ShinobiModelView.shared)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                // Фон
                Color("Background")
                    .ignoresSafeArea()
                
                // Основное содержимое
                VStack {
                    // Заголовок
                    Text("Shinobi")
                        .font(.custom("JosefinSans-Bold", size: 30))
                        .foregroundColor(.white)
                        .padding(.top, 20)
                        .padding(.trailing, 250)
                    
                    // Состояния отображения
                    Group {
                        if viewModel.isLoading {
                            ProgressView()
                                .scaleEffect(1.5)
                                .padding()
                        } else if let error = viewModel.error {
                            ErrorView(error: error) {
                                viewModel.refreshData()
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
    
    // Вынесенный список для чистоты кода
    private var contentListView: some View {
        List(viewModel.shinobi) { shinobi in
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

// Вынесенные субвью для лучшей организации кода
struct ShinobiRow: View {
    let shinobi: Shinobi
    
    var body: some View {
        HStack {
            Image(shinobi.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 125)
            
            VStack(alignment: .leading) {
                Text(shinobi.name)
                    .font(.custom("JosefinSans-Regular", size: 20))
                
                Text("Power: \(shinobi.power)/100")
                    .font(.custom("JosefinSans-Regular", size: 20))
                
                Text("Intelligence: \(shinobi.intelligence)/100")
                    .font(.custom("JosefinSans-Regular", size: 20))
            }
            .foregroundColor(.white)
        }
        .overlay(divider, alignment: .bottom)
    }
    
    private var divider: some View {
        Rectangle()
            .fill(Color.gray.opacity(0.5))
            .frame(height: 1)
            .padding(.leading, 120)
            .padding(.trailing, 20)
    }
}

struct ErrorView: View {
    let error: Error
    let retryAction: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Error loading data")
                .font(.headline)
            
            Button(action: retryAction) {
                Text("Retry")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .foregroundColor(.white)
    }
}


#Preview{
    ShinobiListView()
}
