//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 30.03.2025.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            self.allCoins.append(DeveloperPreview.instace.coin)
//            self.portfolioCoins.append(DeveloperPreview.instace.coin)
//        }
        
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
    
}
