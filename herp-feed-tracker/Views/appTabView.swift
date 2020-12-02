//
//  appTabView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/22/20.
//

import SwiftUI

struct appTabView: View {
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
                  .tag(1)
          }
            
        }// end of VStack
    }
}

struct appTabView_Previews: PreviewProvider {
    static var previews: some View {
        appTabView()
    }
}
