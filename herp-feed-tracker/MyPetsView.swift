//
//  MyPetsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct AddFeedingView: View {
    var body: some View {
        Text("add new feeding. here.")
    }
}

struct MyPetsView: View {
    @State var repList: [Reptile] = [
        Reptile(name: "gimli", icon: "default_reptile", description: "mojave ball"),
        Reptile(name: "Zelda", icon: "default_reptile", description: "hognose xanth"),
        Reptile(name: "Erso", icon: "default_reptile", description: "cornsnake")
    ]
    
    func handleNewFeeding() -> Void {
        //display a form to fill out for new feeding
    }
    
    func handleNewReptile() -> Void {
        self.repList.append(Reptile(name: "gizmo", icon: "default_reptile", description: "beard dragon"))
    }
    
    var body: some View {
        VStack {
            NavigationView {
                List(repList) { rep in
                    NavigationLink(destination: DetailsView(theReptile: rep)) {
                        HStack {
                            PetCircleView(reptile: rep)
                            Text(rep.name)
                                .font(.headline)
                                .padding()
                            
                            
                        }.padding(7)
                    }
                }
                .navigationBarTitle("Reptiles")
                .navigationBarItems(
                    trailing:
                        Menu {
                            Button("New Reptile", action: handleNewReptile)
                            Button("New Feeding", action: handleNewFeeding)
                            Button("New Poop", action: {})
                        } label: {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                        }
                )
            }

        } //eof VStack
        .background(Color.green)
    }
}

//Menu {
//    Button("Open in Preview", action: openInPreview)
//    Button("Save as PDF", action: saveAsPDF)
//} label: {
//    Label("PDF", systemImage: "doc.fill")
//}

struct MyPetsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPetsView()
    }
}
