//
//  ReptileCard.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/28/20.
//

import SwiftUI

struct ReptileCard: View {
    var reptile: Reptile
    
    var body: some View {
        ZStack {
            GroupBox(
                label: Label(self.reptile.name, systemImage: "tortoise.fill")
                    .foregroundColor(Color(UIColor.systemIndigo))
            ) {
                Text(self.reptile.description ?? "a cool looking guy")
            }
        }
    }
}

struct ReptileCard_Previews: PreviewProvider {
    static var previews: some View {
        ReptileCard(reptile: Reptile(name: "Cayenne", description: "A Gargoyle Gecko that is a fatty!"))
            .previewLayout(.sizeThatFits)
    }
}
