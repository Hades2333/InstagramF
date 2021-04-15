//
//  PostViewModel.swift
//  InstagramF
//
//  Created by Hellizar on 15.04.21.
//

import Foundation

struct PostViewModel {
    private let post: Post

    var imageUrl: URL? { return URL(string: post.imageUrl) }

    var caption: String { return post.caption }

    var likes: Int { return post.likes }
    
    init(post: Post) {
        self.post = post
    }
}
