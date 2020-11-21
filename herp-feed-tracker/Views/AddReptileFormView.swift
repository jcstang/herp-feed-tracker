//
//  AddReptileFormView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/20/20.
//

import SwiftUI

struct AddReptileFormView: View {
    @State var someField: String
    
    var body: some View {
        VStack {
            Label("Label \(someField)", systemImage: "42.circle")
            Form {
                Section {
                    Text("thingy")
                    Text("thingy")
                }
                Text("thingy")
                Text("thingy")
                Text("thingy")
                Section {
                    Text("thingy!")
                    TextField("fill this out", text: $someField)
                }
            }
            Button(action: {
                someField = ""
            }) {
                Image(systemName: "hare")
                Text("all done")
            }
        }
    }
}

struct AddReptileFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddReptileFormView(someField: "")
    }
}
