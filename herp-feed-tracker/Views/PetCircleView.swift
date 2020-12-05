//
//  PetCircleView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct PetCircleView: View {
    let reptile: Reptile
    let defaultIcon: String = "default_reptile"
    var body: some View {
        ZStack {
            Image(reptile.icon ?? defaultIcon)
                .shadow(radius: 3)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Circle().stroke(Color.green, lineWidth: 2)
                )
                .clipShape(Circle())
        }
    }
}

struct PetCircleView_Previews: PreviewProvider {
    static var previews: some View {
        PetCircleView(reptile: Reptile(name: "blaze"))
    }
}
