//
//  AddReptileFormView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry


    var id: String { self.rawValue }
}

enum Type: String, CaseIterable, Identifiable {
  case snake
  case gecko
  case other
  
  var id: String { self.rawValue }
}


struct AddReptileFormView: View {
//  @State var someField: String
  @State var newReptile: Reptile = Reptile(name: "Rex")
  @State private var selectedType = Type.snake
//  @State var name: String
//  @State var desc: String
  
  @State private var willMoveToNextScreen = false
  @Environment(\.presentationMode) var presentationMode
  @State private var selectedFlavor = Flavor.chocolate
  @ObservedObject private var reptileViewModel = ReptileViewModel()
  
  func collectValues() -> Void {
    // collect stuff
    // create a new reptile from the values
    reptileViewModel.listOfReptiles.append(newReptile)
  }
  
    
    var body: some View {
      VStack {
        Label(" \(newReptile.name)", systemImage: "keyboard")
          NavigationView {
            Form {
              Section(header: Text("Name & Description")) {
                TextField("Name", text: $newReptile.name)
                TextField("Description", text: $newReptile.description)
                    
              }
                
              Section {
                
                Picker("Type", selection: $newReptile.type) {
                  Text("Snake").tag(Type.snake)
                  Text("Gecko").tag(Type.gecko)
                  Text("Other").tag(Type.other)
                }
                  
                Text("Selected flavor: \(selectedFlavor.rawValue)")
                Text("rep type: \(selectedType.rawValue)")
              }
                
                Section {
                    // ** Birth Date **
                    VStack {
                        VStack {
                          DatePicker(selection: .constant(newReptile.birthDate), label: { Text("Birth Date") })
                        }
                    }
                }

            } // eof form
        }
            
            
            Button(action: {
              self.presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "tortoise")
              Text("Save")
            }

        }
    }
}

struct AddReptileFormView_Previews: PreviewProvider {
    static var previews: some View {
//        AddReptileFormView(someField: "")
      AddReptileFormView()
    }
}
