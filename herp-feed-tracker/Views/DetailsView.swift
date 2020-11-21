//
//  DetailsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct DetailsView: View {
    let theReptile: Reptile
    let defaultDesc: String = "some herp"
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                PetCircleView(reptile: theReptile).padding(.trailing, 5)
                
                Text(theReptile.name)
                    .font(.largeTitle)
                    .bold()
                Text(theReptile.description ?? defaultDesc)
                    .font(.subheadline)
                
                Spacer()

            } // end of HStack
            .padding()
            .navigationBarTitle(Text(theReptile.name), displayMode: .inline)
            
            Text(theReptile.description ?? defaultDesc)
                .font(.title)
                .padding()
            
        } // end of VStack
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(theReptile: Reptile(name: "rex", icon: "mic", description: "paperclip"))
    }
}
