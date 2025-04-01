//
//  XMarkButton.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 1.04.2025.
//

import SwiftUI

struct XMarkButton: View {
    
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            //presentationMode.wrappedValue.dismiss()
            dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButton()
}
