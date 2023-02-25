//
//  TweetTableViewCell.swift
//  TwttrClone
//
//  Created by Amr Mohamad on 25/02/2023.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    
    static let indentifier = "TweetTableViewCell"
    
    private let avaterImageView : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 25
        image.layer.masksToBounds = true
        image.clipsToBounds = true
        image.image = UIImage(systemName: "person")
        image.backgroundColor = .lightGray
        return image
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avaterImageView)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureConstraints (){
        let avaterImageViewConstraints = [
            avaterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            avaterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            avaterImageView.heightAnchor.constraint(equalToConstant: 50),
            avaterImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(avaterImageViewConstraints)
    }
}
