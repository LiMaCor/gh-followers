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
    
    static let sampleFollower1 = Follower(login: "sallen0400",
                                          avatarUrl: ""
    )
    
    static let sampleFollower2 = Follower(login: "rurioh",
                                          avatarUrl: ""
    )
    
    static let sampleFollower3 = Follower(login: "ramitse",
                                          avatarUrl: ""
    )
    
    static let followers = [sampleFollower,
                            sampleFollower1,
                            sampleFollower2,
                            sampleFollower3
    ]
}
