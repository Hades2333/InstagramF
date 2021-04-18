//
//  PostViewModel.swift
//  InstagramF
//
//  Created by Hellizar on 15.04.21.
//

import Foundation

struct PostViewModel {
    let post: Post

    var imageUrl: URL? { return URL(string: post.imageUrl) }

    var userProfileImageUrl: URL? { return URL(string: post.ownerImageUrl) }

    var username: String { return post.ownerUsername }

    var caption: String { return post.caption }

    var likes: Int { return post.likes }

    var likesLabelText: String {
        if post.likes != 1 {
            return "\(post.likes) likes"
        } else {
            return "\(post.likes) like"
        }
    }

    init(post: Post) {
        self.post = post
    }
}
