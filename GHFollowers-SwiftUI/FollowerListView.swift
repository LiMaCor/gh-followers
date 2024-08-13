//
//  FollowerListView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 12/8/24.
//

import SwiftUI

struct FollowerListView: View {
    
    @StateObject var viewModel = FollowerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.followers) { follower in
                    FollowerDetailView(follower: follower)
                }
            }
            .task {
                viewModel.getFollowers()
            }
        }
        .navigationTitle("🔎 Search")
    }
}

#Preview {
    FollowerListView()
}
