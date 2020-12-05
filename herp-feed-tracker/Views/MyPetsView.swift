//
//  MyPetsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

// ===================================================
// Example code - ObservableObject and StateObject
// ===================================================
//class Counter: ObservableObject {
//    @Published var value: Int = 0
//}
//
//struct CounterView: View {
//
//    @StateObject var counter = Counter()
//
//    var body: some View {
//        VStack {
//            Text("\(counter.value)")
//            Button("Increment Counter") {
//                counter.value += 1
//            }
//        }
//    }
//}
// ===================================================

struct MyPetsView: View {
  @State var showAddReptileFormView = false
  @State private var count: Int = 0
//  @StateObject var repList2: ReptileList
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
    showAddReptileFormView = true
  }
    
  // MARK: - body
  var body: some View {
    VStack {
      NavigationView {
        List(repList) { rep in
          NavigationLink(destination: DetailsView(theReptile: rep)) {
            ReptileCard(reptile: rep)
          }
        }
        .navigationBarTitle("My Pets")
      }// eof nav view
      Spacer()
      
      // *************************************************
      // MARK: Add button
      HStack {
        Button(action: {
            print("Add button tapped!")
            handleNewReptile()
        }) {
            HStack {
                Image(systemName: "plus")
                    .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(40)
        }
      }
      // *************************************************
      
    } //eof VStack
    .sheet(isPresented: $showAddReptileFormView) {
      AddReptileFormView(someField: "hello", name: "Rex", desc: "cool")
    }
  } // eof body
}

struct MyPetsView_Previews: PreviewProvider {
    static var previews: some View {
        MyPetsView()
    }
}
