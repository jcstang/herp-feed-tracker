//
//  TestingView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/28/20.
//

import SwiftUI

struct TestingView: View {
    var repList: [Reptile]
    
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
            }
            .navigationBarTitle(Text("Navigation Title")) // Default to large title style
        }
//        NavigationView {
//            VStack {
//                List(repList) { rep in
//                  NavigationLink(destination: DetailsView(theReptile: rep)) {
//                    ReptileCard(reptile: rep)
//                  }
//                }
//            }
//            .toolbar {
//                ToolbarItem(placement: .bottomBar) {
//                    Button {
//
//                    } label: {
//                        Image(systemName: "tortoise")
//                    }
//                }
//
//                ToolbarItem(placement: .bottomBar) {
//                    Spacer()
//                }
//
//                ToolbarItem(placement: .bottomBar) {
//                    Button {
//                        //action
//                    } label: {
//                        Image(systemName: "hare")
//                    }
//                }
//
//                ToolbarItem(placement: .bottomBar) {
//                    Button {
//
//                    } label: {
//                        Image(systemName: "square.and.pencil")
//                    }
//                }
//            }
//        }
    }
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView(repList: [Reptile(name: "rex")])
    }
}
