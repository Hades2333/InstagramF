//
//  ProfileCell.swift
//  InstagramF
//
//  Created by Hellizar on 13.04.21.
//

import UIKit

class ProfileCell: UICollectionViewCell {

    //MARK: - Properties

    var viewModel: PostViewModel? {
        didSet { configure() }
    }

    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "venom-7")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue

        addSubview(postImageView)
        postImageView.fillSuperview()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Helpers
    func configure() {
        guard let viewModel = viewModel else { return }

        postImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
