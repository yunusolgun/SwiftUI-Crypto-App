//
//  String.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 2.04.2025.
//

import Foundation


extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
