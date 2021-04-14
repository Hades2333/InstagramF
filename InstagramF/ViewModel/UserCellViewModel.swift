//
//  UserCellViewModel.swift
//  InstagramF
//
//  Created by Hellizar on 14.04.21.
//

import Foundation

struct UserCellViewModel {

    //MARK: - Properties
    private let user: User

    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }

    var username: String {
        return user.username
    }

    var fullname: String {
        return user.fullname
    }

    //MARK: - Initialization
    init(user: User) {
        self.user = user
    }
}
