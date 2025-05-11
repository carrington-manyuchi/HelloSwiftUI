//
//  Hike.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import Foundation


struct Hike: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
    let photo: String
    let miles: Double
}
