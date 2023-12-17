//
//  User.swift
//  SwftUIInsta
//
//  Created by joe on 2023/12/11.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "batman", profileImageUrl: "batman", fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: UUID().uuidString, username: "venom", profileImageUrl: "venom", fullname: "Eddie Brock", bio: "Venom", email: "venom@gmail.com"),
        .init(id: UUID().uuidString, username: "ironman", profileImageUrl: "ironman", fullname: "Tony Stark", bio: "Playboy & Billionaire", email: "ironman@gmail.com"),
        .init(id: UUID().uuidString, username: "blackpanther", profileImageUrl: "blackpanther", fullname: nil, bio: "Wakanda Forever", email: "blackpanther@gmail.com"),
        .init(id: UUID().uuidString, username: "spiderman", profileImageUrl: "spiderman", fullname: "Peter Parker", bio: "Test bio", email: "spiderman@gmail.com")
    ]
}
