//
//  FruitModel.swift
//  Fructus
//
//  Created by Kyaw Thant Zin(George) on 2/27/25.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title : String
    var headline: String
    var image : String
    var gradientColors : [Color]
    var description: String
    var nutrition: String
}
