//
//  Post.swift
//  SwftUIInsta
//
//  Created by joe on 2023/12/11.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "This is some test caption for now",
              likes: 123,
              imageUrl: "batman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Wakanda Forever",
              likes: 104,
              imageUrl: "blackpanther",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Iron Man",
              likes: 12,
              imageUrl: "ironman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "Venom is hungry. Time to eat",
              likes: 314,
              imageUrl: "venom",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: UUID().uuidString,
              ownerUid: UUID().uuidString,
              caption: "This is some test caption for now",
              likes: 76,
              imageUrl: "venom",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1])
    ]
}
