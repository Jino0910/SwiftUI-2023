//
//  FruitModel.swift
//  Fructus
//
//  Created by kakao on 2023/04/06.
//

import Foundation
import SwiftUI

// MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
