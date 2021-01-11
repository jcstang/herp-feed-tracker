//
//  ReptileViewModel.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 12/5/20.
//

import Foundation

class ReptileViewModel: Identifiable, ObservableObject {
  let id = UUID()
  @Published var name: String = "Pascal"
  @Published var icon: String = "default_reptile"
  @Published var type: Type = Type.gecko
  @Published var hatchBirthDay: Date = Date()
  @Published var listOfReptiles: [Reptile] = []
  
  init() {
    fillDefaultReptiles()
  }
  
  func fillDefaultReptiles() -> Void {
    self.listOfReptiles.append(
      contentsOf:
        [
          Reptile(name: "gimli"),
          Reptile(name: "Zelda"),
          Reptile(name: "Erso"),
          Reptile(name: "Mando")
        ]
    )
    
  }
  
}
