//
//  ContentView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 0
    
    var body: some View {
        TabView(selection: $selectedView) {
            Text("Home Tab")
                .tabItem {
                    Image(systemName: "tortoise")
                    Text("My Pets")
                }
                .tag(0)
            
            Text("Add")
                .tabItem {
                    Image(systemName: "goforward.plus")
                    Text("Add")
                }
                .tag(1)
                
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(2)
            
            SecondView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Second")
                }
            
        }// end of TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
