//
//  MyPetsViewModel.swift
//  herp-feed-tracker
//
//  Created by Jacob Stanger on 11/22/20.
//

import Foundation


class ReptileList: ObservableObject {
    @Published var mainList: [Reptile]
    
    init(list: [Reptile]) {
        self.mainList = list
    }
}
