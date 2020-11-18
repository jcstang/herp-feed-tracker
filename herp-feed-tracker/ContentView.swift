//
//  ContentView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct Reptile: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let description: String
}

struct ContentView: View {
    @State var selectedView = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedView) {
                MyPetsView()
                    .tabItem {
                        Image(systemName: "tortoise")
                        Text("My Pets")
                    }
                    .tag(0)
                    
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(2)
                
            }
        }// end of TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
