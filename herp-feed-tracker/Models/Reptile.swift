//
//  Reptile.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import Foundation

class Reptile: Identifiable, ObservableObject {
  let id = UUID()
  var name: String = "Rascal"
  var icon: String = "default_reptile"
  var description: String = "some cool reptile I own"
  var type: Type = Type.snake
  var birthDate: Date = Date()
    
  init(name: String ) {
    self.name = name
  }
  
}
