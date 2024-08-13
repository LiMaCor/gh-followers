//
//  FollowerDetailView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import SwiftUI

struct FollowerDetailView: View {
    
    var follower: Follower
    
    var body: some View {
        Text(follower.login)
    }
}

#Preview {
    FollowerDetailView(follower: FollowerMockData.sampleFollower)
}
