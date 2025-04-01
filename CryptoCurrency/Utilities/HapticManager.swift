//
//  HapticManager.swift
//  CryptoCurrency
//
//  Created by yunus olgun on 1.04.2025.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
