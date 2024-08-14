//
//  FavoriteListCell.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 14/8/24.
//

import SwiftUI

struct FavoriteListCell: View {
    
    let favorite: Follower
    
    var body: some View {
        HStack {
            Image("avatar-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 120, height: 90)
            
            Text(favorite.login)
                .font(.title2)
                .fontWeight(.medium)
        }
    }
}

#Preview {
    FavoriteListCell(favorite: FollowerMockData.sampleFollower)
}
