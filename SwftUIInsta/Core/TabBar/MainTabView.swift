//
//  MainTabView.swift
//  SwftUIInsta
//
//  Created by joe on 2023/12/08.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .tint(.black)  // 'accentColor' will be deprecated
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
