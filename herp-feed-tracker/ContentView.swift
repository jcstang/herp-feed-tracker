//
//  ContentView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Tab")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Add")
                .tabItem {
                    Image(systemName: "goforward.plus")
                    Text("Add")
                }
                
            Text("other tab")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }// end of TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
