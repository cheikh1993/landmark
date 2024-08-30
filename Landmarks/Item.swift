//
//  Item.swift
//  Landmarks
//
//  Created by Mackbook on 08/08/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
