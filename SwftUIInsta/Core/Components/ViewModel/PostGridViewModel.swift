//
//  PostGridViewModel.swift
//  SwftUIInsta
//
//  Created by joe on 12/23/23.
//

import Foundation

class PostGridViewModel: ObservableObject {
    private var user: User
    @Published var posts = [Post]()
    
    init(user: User) {
        self.user = user
        
        Task { try await fetchUserPosts() }
    }
    
    @MainActor
    func fetchUserPosts() async throws {
        self.posts = try await PostService.fetchUserPosts(uid: user.id)
        
        for i in 0 ..< posts.count {
            posts[i].user = self.user
        }
    }
}
