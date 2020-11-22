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


struct AddReptileFormView: View {
    @State var someField: String
    @State private var willMoveToNextScreen = false
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedFlavor = Flavor.chocolate
    
    var body: some View {
        VStack {
            Label(" \(someField)", systemImage: "keyboard")
            NavigationView {
            Form {
                Section {
                    
                    TextField("Name", text: $someField)
                    TextField("Description", text: $someField)
                    
                }
                
                Section {
                    // ** Type **
                    TextField("Type", text: $someField)
                    Picker(selection: .constant(1), label: Text("Picker")) {
                        Text("snake").tag(1)
                        Text("Other").tag(2)
                        Text("Gecko").tag(3)
                    }
                    
                    Picker("Flavor", selection: $selectedFlavor) {
                        Text("Chocolate").tag(Flavor.chocolate)
                        Text("Vanilla").tag(Flavor.vanilla)
                        Text("Strawberry").tag(Flavor.strawberry)
                    }
                    
                    Text("Selected flavor: \(selectedFlavor.rawValue)")
                }
                
                Section {
                    // ** Birth Date **
                    VStack {
                        VStack {
                            DatePicker(selection: .constant(Date()), label: { Text("Birth date") })
                        }
                    }
                }

            }
        }
            
            
            Button(action: {
                someField = ""
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "hare")
                Text("Save")
            }

        }
    }
}

struct AddReptileFormView_Previews: PreviewProvider {
    static var previews: some View {
//        AddReptileFormView(someField: "")
        AddReptileFormView(someField: "blah")
    }
}
