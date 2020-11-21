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

//struct Reptile: Identifiable {
//    let id = UUID()
//    let name: String
//    let icon: String
//    let description: String
//}

struct MyPetsView: View {
  @State var showAddReptileFormView = false
  @State var repList: [Reptile] = [
    Reptile(name: "gimli", icon: "default_reptile", description: "mojave ball", type: .snake),
    Reptile(name: "Zelda", icon: "default_reptile", description: "hognose xanth", type: .snake),
    Reptile(name: "Erso", icon: "default_reptile", description: "cornsnake", type: .snake),
    Reptile(name: "george")
    ]
    
    func handleNewFeeding() -> Void {
        //display a form to fill out for new feeding
    }
    
    func handleNewReptile() -> Void {
      self.repList.append(Reptile(name: "gizmo"))
    }
    
    var body: some View {
      VStack {
        // help from this site
        //hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
        //*
        Button(action: {
          showAddReptileFormView = true
        }) {
          Text("go to other page")
        }
        
        NavigationView {
          List(repList) { rep in
            NavigationLink(destination: DetailsView(theReptile: rep)) {
                HStack {
                    PetCircleView(reptile: rep)
                  VStack {
                    Text(rep.name)
                        .font(.headline)
                        .padding()
                    
                    Text(rep.description ?? "my pet")
                        .font(.subheadline)
                  }

                }.padding()
                

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
          
        }// eof nav view
      } //eof VStack
      .sheet(isPresented: $showAddReptileFormView) {
        AddReptileFormView(someField: "hello")
      }
    }// eof body
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
