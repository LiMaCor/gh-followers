//
//  Follower.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import Foundation

struct Follower: Codable, Identifiable {
    var id = UUID()
    var login: String
    var avatarUrl: String
}

struct FollowerMockData {
    
    static let sampleFollower = Follower(login: "limacor",
                                         avatarUrl: ""
    )
    
    static let followers = [sampleFollower,
                            sampleFollower,
                            sampleFollower,
                            sampleFollower,
                            sampleFollower
    ]
}
