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
  @State var someField: String
  @State var newReptile: Reptile = Reptile(name: "Rex")
  @State private var selectedType = Type.snake
  @State var name: String?
  @State var desc: String?
  
  @State private var willMoveToNextScreen = false
  @Environment(\.presentationMode) var presentationMode
  @State private var selectedFlavor = Flavor.chocolate
  
  func collectValues() -> Void {
    // collect stuff
    // create a new reptile from the values
  }
  
    
    var body: some View {
      VStack {
        Label(" \(newReptile.name)", systemImage: "keyboard")
          NavigationView {
            Form {
              Section {
                TextField("Name", text: $name)
                TextField("Description", text: $desc)
                    
              }
                
              Section {
                
                Picker("Type", selection: $selectedType) {
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
                            DatePicker(selection: .constant(Date()), label: { Text("Birth date") })
                        }
                    }
                }

            } // eof form
        }
            
            
            Button(action: {
                someField = ""
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
      AddReptileFormView(someField: "New", name: "rex", desc: "blah")
    }
}
