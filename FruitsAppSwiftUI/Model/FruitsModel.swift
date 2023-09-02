//
//  FruitsModel.swift
//  FruitsAppSwiftUI
//
//  Created by Narayanasamy on 30/08/23.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    
// Fetch the data from local data file using UUID
    var id = UUID()
    var tittle: String
    var headline: String
    var image: String
    var gardientColors: [Color]
    var description: String
    var nutrition:[String]
}
