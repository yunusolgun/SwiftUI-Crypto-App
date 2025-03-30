//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 30.03.2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.allCoins.append(DeveloperPreview.instace.coin)
            self.portfolioCoins.append(DeveloperPreview.instace.coin)
        }
    }
    
    
}
