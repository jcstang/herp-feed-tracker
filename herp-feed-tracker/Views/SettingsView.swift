//
//  SettingsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

var someSettings = ["General", "Dark Mode", "Other setting"]


struct SettingsView: View {
    var body: some View {
      VStack {
        Text("Settings").font(.title)
        HStack {
          List(someSettings, id: \.self) { data in
            settingsLine(settingText: data)
          }
        }
      }
    }
}

struct settingsLine: View {
  @State private var status = true
  var settingText = ""
  
  var body: some View {
    VStack {
      HStack {
        Toggle(isOn: $status) {
          Text(settingText)
        }

      }
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
