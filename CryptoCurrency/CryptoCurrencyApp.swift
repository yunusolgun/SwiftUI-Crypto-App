//
//  CryptoCurrencyApp.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 29.03.2025.
//

import SwiftUI

@main
struct CryptoCurrencyApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
