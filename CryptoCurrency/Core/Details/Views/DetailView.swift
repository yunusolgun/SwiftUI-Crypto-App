//
//  DetailView.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 2.04.2025.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject var vm: DetailViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Initialiazing Detail view for \(coin.name)")
    }
    
    var body: some View {
        Text("hello")
        
    }
}

#Preview {
    DetailView(coin: DeveloperPreview.instace.coin)
}
