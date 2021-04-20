//
//  Notification.swift
//  InstagramF
//
//  Created by Hellizar on 19.04.21.
//

import Firebase

enum NotificationType: Int {
    case like
    case follow
    case comment

    var notificationMessage: String {
        switch self {
        case .like: return " liked your post"
        case .comment: return " commented on yout post"
        case .follow: return " started following you"
        }
    }
}

struct Notification {
    let uid: String
    var postImageUrl: String?
    var postId: String?
    let timestamp: Timestamp
    let type: NotificationType
    let id: String
    let profileImageUrl: String
    let username: String
    var userIsFollowed = false

    init(dictionaty: [String: Any]) {
        self.timestamp = dictionaty["timestamp"] as? Timestamp ?? Timestamp(date: Date())
        self.id = dictionaty["id"] as? String ?? ""
        self.uid = dictionaty["uid"] as? String ?? ""
        self.postId = dictionaty["postId"] as? String ?? ""
        self.postImageUrl = dictionaty["postImageUrl"] as? String ?? ""
        self.type = NotificationType(rawValue: dictionaty["type"] as? Int ?? 0) ?? .like
        self.profileImageUrl = dictionaty["profileImageUrl"] as? String ?? ""
        self.username = dictionaty["username"] as? String ?? ""
    }
}
