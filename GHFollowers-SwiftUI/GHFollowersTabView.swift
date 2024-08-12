//
//  GHFollowersTabView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 12/8/24.
//

import SwiftUI

struct GHFollowersTabView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass.circle.fill")}
            
            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "star.fill")}
        }
    }
}

#Preview {
    GHFollowersTabView()
}
