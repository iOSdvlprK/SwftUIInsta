//
//  ProfileHeaderView.swift
//  SwftUIInsta
//
//  Created by joe on 2023/12/11.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            // pic and stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 3, title: "Posts")
                    
                    UserStatView(value: 12, title: "Followers")
                    
                    UserStatView(value: 24, title: "Following")
                }
            }
            .padding(.horizontal)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text(user.username) // for test purpose
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            Button {
                if user.isCurrentUser {
                    print("Show edit profile")
                } else {
                    print("Follow user..")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? Color(.systemBackground) : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? Color(.label) : .white)
                    .cornerRadius(6)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? Color(.systemGray) : .clear, lineWidth: 1)
                    }
            }
            
            Divider()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}
