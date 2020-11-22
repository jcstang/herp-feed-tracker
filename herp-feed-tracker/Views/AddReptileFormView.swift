//
//  AddReptileFormView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import SwiftUI

struct AddReptileFormView: View {
    @State var someField: String
    @State private var willMoveToNextScreen = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Label(" \(someField)", systemImage: "keyboard")
            Form {
                Section {
                    
                    // ** Name **
                    HStack {
                        Text("Name ").fontWeight(.light)
                        TextField("Name", text: $someField)
                    }
                    
                    // ** Description **
                    HStack {
                        Text("Description ").fontWeight(.light)
                        TextField("Name", text: $someField)
                    }
                    
                }
                
                Section {
                    // ** Type **
                    HStack {
                        Text("Type ").fontWeight(.light)
                        TextField("Name", text: $someField)
                    }
                }
                
                Section {
                    // ** Birth Date **
                    HStack {
                        Text("Birth date ").fontWeight(.light)
                        TextField("Name", text: $someField)
                    }
                }

            }
            Button(action: {
                someField = ""
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "hare")
                Text("clear")
            }

        }
    }
}

struct AddReptileFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddReptileFormView(someField: "")
    }
}
