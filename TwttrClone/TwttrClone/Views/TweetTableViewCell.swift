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
        userName.textColor = .secondaryLabel
        userName.font = .systemFont(ofSize: 14, weight: .light)
        userName.translatesAutoresizingMaskIntoConstraints = false
        return userName
    }()
    
    private let tweetTextContent : UILabel = {
        let tweetText = UILabel()
        tweetText.translatesAutoresizingMaskIntoConstraints = false
        tweetText.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
        tweetText.numberOfLines = 0
        return tweetText
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avaterImageView)
        contentView.addSubview(accountNameLabel)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(tweetTextContent)
        
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
        
        let tweetTextContentConstraints = [
            tweetTextContent.leadingAnchor.constraint(equalTo: avaterImageView.trailingAnchor, constant: 10),
            tweetTextContent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            tweetTextContent.topAnchor.constraint(equalTo: accountNameLabel.bottomAnchor, constant: 10),
            tweetTextContent.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 1)
        ]
        
        NSLayoutConstraint.activate(avaterImageViewConstraints)
        NSLayoutConstraint.activate(accountNameConstraints)
        NSLayoutConstraint.activate(userNameLabelConstraints)
        NSLayoutConstraint.activate(tweetTextContentConstraints)
    }
}
