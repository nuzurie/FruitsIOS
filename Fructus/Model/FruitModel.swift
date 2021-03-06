//
//  FruitModel.swift
//  Fructus
//
//  Created by Zubair Nurie on 2021-05-02.
//

import SwiftUI

// MARK:-

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
