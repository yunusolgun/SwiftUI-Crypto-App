//
//  UIApplicatim.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 1.04.2025.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
