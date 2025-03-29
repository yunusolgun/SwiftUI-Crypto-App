//
//  CircleButtonAnimationView.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 29.03.2025.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1 : 0)
            .opacity(animate ? 0 : 1)
            .animation(animate ? Animation.easeInOut(duration: 1.0) : .none)

    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(true))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
