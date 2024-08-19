//
//  FollowerCell.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import SwiftUI

struct FollowerCell: View {
    
    var follower: Follower
    
    var body: some View {
        VStack {
            Image("avatar-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            Text(follower.login)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FollowerCell(follower: Follower(login: "limacor", avatarUrl: ""))
}
