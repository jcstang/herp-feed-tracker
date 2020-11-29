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
                label: Label(self.reptile.name, systemImage: "tortoise")
                    .foregroundColor(.red)
            ) {
                Text(self.reptile.description ?? "a cool looking guy")
            }
        }
    }
}

struct ReptileCard_Previews: PreviewProvider {
    static var previews: some View {
        ReptileCard(reptile: Reptile(name: "Cayenne"))
            .previewLayout(.sizeThatFits)
    }
}
