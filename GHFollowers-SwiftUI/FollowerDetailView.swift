//
//  FollowerDetailView.swift
//  GHFollowers-SwiftUI
//
//  Created by Julian Martinez Cordones on 13/8/24.
//

import SwiftUI

struct FollowerDetailView: View {
    
    var follower: Follower
    
    var body: some View {
        VStack {
            HStack {
                Image("avatar-placeholder")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text("User Login")
                        .font(.title).bold()
                    
                    Text("User Name")
                        .fontWeight(.medium)
                    
                    Text("User Location")
                        .fontWeight(.medium)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 180, alignment: .leading)
            
            Text("User Bio")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
            
            VStack {
                HStack(spacing: 70) {
                    VStack {
                        Label("Public Repos", systemImage: "folder")
                        
                        Text("20")
                    }
                    
                    VStack {
                        Label("Public Gists", systemImage: "text.alignleft")
                        
                        Text("20")
                    }
                }
                .padding()
                
                Button {
                    
                } label: {
                    Label("GitHub Profile", systemImage: "person")
                }
                .buttonStyle(.bordered)
                .tint(.blue)
                .controlSize(.large)
                .padding(.bottom, 20)
            }
            .frame(width: 360, height: 180)
            
            VStack {
                HStack(spacing: 70) {
                    VStack {
                        Label("Followers", systemImage: "folder")
                        
                        Text("34")
                    }
                    
                    VStack {
                        Label("Following", systemImage: "text.alignleft")
                        
                        Text("42")
                    }
                }
                .padding()
                
                Button {
                    
                } label: {
                    Label("Get Followers", systemImage: "person.3")
                }
                .buttonStyle(.bordered)
                .tint(.brandPrimary)
                .controlSize(.large)
                .padding(.bottom, 20)
            }
            .frame(width: 360, height: 180)
            
            Text("GitHub user since 1999")
                .padding(.top, 40)
        }
        .padding()
        
        Spacer()
    }
}

#Preview {
    FollowerDetailView(follower: FollowerMockData.sampleFollower)
}
