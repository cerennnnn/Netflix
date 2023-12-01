//
//  TitleCollectionViewCell.swift
//  Netflix-Clone
//
//  Created by Ceren Güneş on 29.11.2023.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    static let identifier = "TitleCollectionViewCell"
    
    private let postermageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(postermageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        postermageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else { return }
        
        postermageView.sd_setImage(with: url, completed: nil)
    }
}
