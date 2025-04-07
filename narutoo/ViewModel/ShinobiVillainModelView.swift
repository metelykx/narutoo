import Foundation
class ShinobiVillainModelView: ObservableObject {
    static let shared = ShinobiVillainModelView()
    
    @Published var villains: [Shinobi] = []
    @Published var isLoading: Bool = false
    @Published var isError: Error? = nil
    
    private init() {
        loadVillain()
    }
    
    func loadVillain() {
        isLoading = true
        isError = nil
        
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            let villains = [
                Shinobi(
                    id: 16,
                    imageUrl: "kakuzu",
                    name: "Kakuzu",
                    clan: "Absent",
                    village: "Takigakure",  
                    power: 93,
                    specialPower: "Five Hearts (control of 5 elements, immortality)",
                    intelligence: 95,
                    Ninjutsu: 89,
                    element: "All five elements",
                    Gendzusu: 0,
                    Taidzusu: 99
                ),
                Shinobi(
                    id: 17,
                    imageUrl: "kisame",
                    name: "Kisame",
                    clan: "Hoshigaki",
                    village: "Kirigakure",
                    power: 94,
                    specialPower: "Samehada Fusion (chakra absorption)",
                    intelligence: 85,
                    Ninjutsu: 91,
                    element: "Water",
                    Gendzusu: 0,
                    Taidzusu: 100
                ),
                Shinobi(
                    id: 18,
                    imageUrl: "konan",
                    name: "Konan",
                    clan: "None",
                    village: "Amegakure",
                    power: 90,
                    specialPower: "Paper Ninjutsu",
                    intelligence: 96,
                    Ninjutsu: 95,
                    element: "Water, Wind",
                    Gendzusu: 0,
                    Taidzusu: 40
                )
            ]
            
            Thread.sleep(forTimeInterval: 2)
            
            DispatchQueue.main.async {
                self?.villains = villains
                self?.isLoading = false
            }
        }
    }
}
