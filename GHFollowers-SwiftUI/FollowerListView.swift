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
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(viewModel.followers) { follower in
                    NavigationLink {
                        FollowerDetailView(follower: follower)
                    } label: {
                        FollowerCell(follower: follower)
                    }
                }
            }
        }
        .task {
            viewModel.getFollowers()
        }
    }
}

#Preview {
    FollowerListView()
}
