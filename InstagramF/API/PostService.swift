//
//  PostService.swift
//  InstagramF
//
//  Created by Hellizar on 15.04.21.
//

import UIKit
import Firebase

struct PostService {

    static func uploadPost(caption: String, image: UIImage, completion: @escaping(FirestoreCompletion)) {
        guard let uid = Auth.auth().currentUser?.uid else { return }

        ImageUploader.uploadimage(image: image) { imageUrl in

            let data = ["caption": caption,
                        "timestamp": Timestamp(date: Date()),
                        "likes": 0,
                        "imageUrl": imageUrl,
                        "ownerUid": uid] as [String: Any]

            COLLECTION_POSTS.addDocument(data: data, completion: completion)
        }
    }
}
