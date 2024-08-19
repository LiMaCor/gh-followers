//
//  SearchView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 12/8/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                Image("gh-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding(.top, 80)
                
                TextField("Enter a username", text: $username)
                    .autocorrectionDisabled(true)
                    .foregroundStyle(.black)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.tertiarySystemBackground)))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10).stroke(Color(UIColor.systemGray4), lineWidth: 2)
                    }
                    .frame(width: 300)
                
                Spacer()
                
                NavigationLink {
                    FollowerListView()
                } label: {
                    Label("Get Followers", systemImage: "person.3")
                        .frame(maxWidth: 300)
                }
                .buttonStyle(.bordered)
                .tint(.brandPrimary)
                .controlSize(.large)
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    SearchView()
}
