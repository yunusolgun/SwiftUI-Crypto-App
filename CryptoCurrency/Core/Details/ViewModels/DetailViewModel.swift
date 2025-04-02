//
//  DetailViewModel.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 2.04.2025.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { [weak self] returnedCoinDetails in
                print("Received coin detail data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
    
}
