//
//  User.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}

struct UserMockData {
    
    static let sampleUser = User(login: "limacor",
                                 avatarUrl: "",
                                 name: "Julián Martínez",
                                 location: "",
                                 bio: "Code reader, bug writer",
                                 publicRepos: 28,
                                 publicGists: 0,
                                 htmlUrl: "https://github.com/LiMaCor",
                                 following: 12,
                                 followers: 2,
                                 createdAt: Date()
    )
}
