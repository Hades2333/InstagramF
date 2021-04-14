//
//  ProfileHeaderViewModel.swift
//  InstagramF
//
//  Created by Hellizar on 13.04.21.
//

import UIKit

struct ProfileHeaderViewModel {
    let user: User

    var fullname: String {
        return user.fullname
    }

    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }

    var followButtonText: String {
        if user.isCurrentUser {
            return "Edit profile"
        }

        return user.isFollowed ? "Following" : "Follow"
    }

    var followButtonBackgroundColor: UIColor {
        return user.isCurrentUser ? .white : .systemBlue
    }

    var followButtonTextColor: UIColor {
        return user.isCurrentUser ? .black : .white
    }

    init(user: User) {
        self.user = user
    }
}
