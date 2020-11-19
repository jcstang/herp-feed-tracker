//
//  PetCircleView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct PetCircleView: View {
    let reptile: Reptile
    var body: some View {
        ZStack {
            Image(reptile.icon)
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
        PetCircleView(reptile: Reptile(name: "blaze", icon: "default_reptile_photo", description: "blah"))
    }
}
