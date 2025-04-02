//
//  SettingsView.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 2.04.2025.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com")!
    let coffeeURL = URL(string: "https://www.microsoft.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personelURL = URL(string: "https://www.github.com")!
    
    var body: some View {
        NavigationView {
            List {
                section_1
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}


extension SettingsView {
    private var section_1: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This app is using MVVM architecture, Combine and CoreData. ")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
                
                
                
            }
            .padding(.vertical)
            
            Link("Subscribe on youtube 🎧", destination: youtubeURL)
            Link("Support coffee ☕️", destination: coffeeURL)
            
        } header: {
            Text("Section 1")
        }
    }
    
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("The crypto currency API from coin gecko ")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
                
                
                
            }
            .padding(.vertical)
            
            Link("Visit coin gecko 😍", destination: coingeckoURL)
            
        } header: {
            Text("Coin Gecko")
        }
    }
    
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text("This is developer section introduction")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
                
                
                
            }
            .padding(.vertical)
            
            Link("Visit website 🥳", destination: personelURL)
            
        } header: {
            Text("Developer")
        }
    }
    
    
    private var applicationSection: some View {
        Section {

            Link("Terms of service", destination: defaultURL)
            Link("Privacy policy", destination: defaultURL)
            Link("Company website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
            
        } header: {
            Text("Application")
        }
    }
    
}
