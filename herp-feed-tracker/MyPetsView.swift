//
//  MyPetsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct MyPetsView: View {
    private let repList: [Reptile] = [
        Reptile(name: "gimli", icon: "default_reptile", description: "mojave ball"),
        Reptile(name: "Zelda", icon: "default_reptile", description: "hognose xanth"),
        Reptile(name: "Erso", icon: "default_reptile", description: "cornsnake")
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List(repList) { rep in
                    NavigationLink(destination: DetailsView(theReptile: rep)) {
                        HStack {
                            Text(rep.name).font(.headline)
                            
                            
                        }.padding(7)
                    }
                }
                .navigationBarTitle("Reptiles")
                
            }

        } //eof VStack
    }
}

struct MyPetsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPetsView()
    }
}
