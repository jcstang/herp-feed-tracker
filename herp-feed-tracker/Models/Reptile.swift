//
//  Reptile.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import Foundation

class Reptile: Identifiable, ObservableObject {
  let id = UUID()
  @Published var name: String = "Rascal"
  @Published var icon: String = "default_reptile"
  @Published var description: String = "some cool reptile I own"
  @Published var type: Type = Type.snake
  @Published var birthDate: Date = Date()
    
  init(name: String ) {
    self.name = name
  }
  
}


//class UserViewModel: ObservableObject {
//    // Input
//    @Published var username = ""
//    @Published var password = ""
//    @Published var passwordAgain = ""
//
//    // Output
//    @Published var isValid = false
//}

//@ObservedObject private var userViewModel = UserViewModel()
