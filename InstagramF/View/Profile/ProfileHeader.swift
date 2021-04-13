//
//  ProfileHeader.swift
//  InstagramF
//
//  Created by Hellizar on 13.04.21.
//

import UIKit

class ProfileHeader: UICollectionReusableView {

    //MARK: - Properties

    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
