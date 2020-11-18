//
//  DetailsView.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/18/20.
//

import SwiftUI

struct DetailsView: View {
    let theReptile: Reptile
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(theReptile.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
            } // end of HStack
            .padding()
            .navigationBarTitle(Text(theReptile.name), displayMode: .inline)
            
            
        } // end of VStack
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(theReptile: Reptile(name: "rex", icon: "mic", description: "paperclip"))
    }
}
