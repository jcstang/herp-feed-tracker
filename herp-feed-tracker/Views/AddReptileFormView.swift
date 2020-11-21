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
            NavigationView {
            Label("Label \(someField)", systemImage: "42.circle")
            Form {
                Section {
                    // ** testing this mehtod of nav
                    NavigationLink(destination: DetailsView(theReptile: Reptile(name: "rex"))) {
                        Text("thingy")
                    }
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
}

struct AddReptileFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddReptileFormView(someField: "")
    }
}
