//
//  FollowerListViewModel.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import SwiftUI

final class FollowerListViewModel: ObservableObject {
    
    @Published var followers: [Follower] = []
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    func getFollowers() {
        followers = FollowerMockData.followers
    }
    
}
