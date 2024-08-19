//
//  FavoritesView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 12/8/24.
//

import SwiftUI

struct FavoritesView: View {
    
    @StateObject var viewModel = FollowerListViewModel()
    var favorites: [Follower] {
        if viewModel.followers.isEmpty {
            viewModel.getFollowers()
        }
        
        return viewModel.followers
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                List(favorites) { favorite in
                    NavigationLink {
                        FollowerDetailView(follower: favorite)
                    } label: {
                        FavoriteListCell(favorite: favorite)
                    }
                    .listRowSeparator(.hidden)
                }
                .navigationTitle("⭐️ Favorites")
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    FavoritesView()
}
