//
//  NotificationViewModel.swift
//  InstagramF
//
//  Created by Hellizar on 19.04.21.
//

import UIKit

struct NotificationViewModel {

    private let notification: Notification

    init(notification: Notification) {
        self.notification = notification
    }

    var postImageUrl: URL? { return URL(string: notification.postImageUrl ?? "") }

    var profileImageUrl: URL? { return URL(string: notification.profileImageUrl)}
}
