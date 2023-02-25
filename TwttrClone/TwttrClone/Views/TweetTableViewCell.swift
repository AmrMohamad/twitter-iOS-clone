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
    
    private let accountNameLabel : UILabel = {
        let accountName = UILabel()
        accountName.text = "Account Title"
        accountName.font = .systemFont(ofSize: 20, weight: .medium)
        accountName.translatesAutoresizingMaskIntoConstraints = false
        return accountName
    }()
    
    private let userNameLabel : UILabel = {
        let userName = UILabel()
        userName.text = "@username"
        userName.font = .systemFont(ofSize: 14, weight: .light)
        userName.translatesAutoresizingMaskIntoConstraints = false
        return userName
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avaterImageView)
        contentView.addSubview(accountNameLabel)
        contentView.addSubview(userNameLabel)
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureConstraints (){
        let avaterImageViewConstraints = [
            avaterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            avaterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            avaterImageView.heightAnchor.constraint(equalToConstant: 50),
            avaterImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let accountNameConstraints = [
            accountNameLabel.leadingAnchor.constraint(equalTo: avaterImageView.trailingAnchor, constant: 10),
            accountNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10)
        ]
        
        let userNameLabelConstraints = [
            userNameLabel.leadingAnchor.constraint(equalTo: accountNameLabel.trailingAnchor, constant: 10),
            userNameLabel.centerYAnchor.constraint(equalTo: accountNameLabel.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(avaterImageViewConstraints)
        NSLayoutConstraint.activate(accountNameConstraints)
        NSLayoutConstraint.activate(userNameLabelConstraints)
    }
}
