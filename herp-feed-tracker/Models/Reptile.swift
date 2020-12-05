//
//  Reptile.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import Foundation

class Reptile: Identifiable, ObservableObject {
    let id = UUID()
    let name: String
    let icon: String?
    let description: String?
    let type: Type?
    let birthDate: Date?
    
    init(name: String, icon: String? = "default_reptile", description: String? = "some reptile, duh!", type: Type? = .snake, birthDate: Date? = Date() ) {
        self.name = name
        self.icon = icon
        self.description = description
        self.type = type
        self.birthDate = birthDate
    }
}
