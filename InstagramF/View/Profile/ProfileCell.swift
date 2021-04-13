//
//  ProfileCell.swift
//  InstagramF
//
//  Created by Hellizar on 13.04.21.
//

import UIKit

class ProfileCell: UICollectionViewCell {

    //MARK: - Properties

    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
