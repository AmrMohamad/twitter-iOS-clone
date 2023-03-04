//
//  TweetTableViewCell.swift
//  TwttrClone
//
//  Created by Amr Mohamad on 25/02/2023.
//

import UIKit

protocol TweetCellDelegate{
    func tweetCelldidCommentButtonPressed()
    func tweetCelldidRetweetButtonPressed()
    func tweetCelldidLikeButtonPressed()
    func tweetCelldidShareButtonPressed()
}

class TweetTableViewCell: UITableViewCell {
    
    static let indentifier = "TweetTableViewCell"
    private let gapBetweenActionButtons: CGFloat = 55
    
    
    var delegate: TweetCellDelegate?
    
    
    // MARK: - Avater Image Properties
    
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
    
    // MARK: - accountName Properties
    private let accountNameLabel : UILabel = {
        let accountName = UILabel()
        accountName.text = "Account Title"
        accountName.font = .systemFont(ofSize: 20, weight: .medium)
        accountName.translatesAutoresizingMaskIntoConstraints = false
        return accountName
    }()
    // MARK: - userName Properties
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
        tweetText.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,\n when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
        tweetText.numberOfLines = 0
        return tweetText
    }()
    // MARK: - Action buttoms
    
    let commentButton : UIButton = {
        let buttom = UIButton(type: .system)
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.setImage(UIImage(systemName: "message"), for: .normal)
        buttom.tintColor = .systemGray2
        return buttom
    }()
    
    let reTweetButton : UIButton = {
        let buttom = UIButton(type: .system)
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.setImage(UIImage(systemName: "arrow.2.squarepath"), for: .normal)
        buttom.tintColor = .systemGray2
        return buttom
    }()
    
    let likeButton : UIButton = {
        let buttom = UIButton(type: .system)
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.setImage(UIImage(systemName: "heart"), for: .normal)
        buttom.tintColor = .systemGray2
        return buttom
    }()
    
    let shareButton : UIButton = {
        let buttom = UIButton(type: .system)
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)
        buttom.tintColor = .systemGray2
        return buttom
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avaterImageView)
        contentView.addSubview(accountNameLabel)
        contentView.addSubview(userNameLabel)
        contentView.addSubview(tweetTextContent)
        contentView.addSubview(commentButton)
        contentView.addSubview(reTweetButton)
        contentView.addSubview(likeButton)
        contentView.addSubview(shareButton)
        likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        configureConstraints()
        configureButtons()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    @objc func commentButtonTapped(){
        delegate?.tweetCelldidCommentButtonPressed()
    }
    @objc func retweetButtonTapped(){
        delegate?.tweetCelldidRetweetButtonPressed()
    }
    @objc func likeButtonTapped(){
        delegate?.tweetCelldidLikeButtonPressed()
    }
    @objc func shareButtonTapped(){
        delegate?.tweetCelldidShareButtonPressed()
    }
    func configureButtons(){
        commentButton.addTarget(self, action: #selector(commentButtonTapped), for: .touchUpInside)
        reTweetButton.addTarget(self, action: #selector(retweetButtonTapped), for: .touchUpInside)
        likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        shareButton.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
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
            tweetTextContent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            tweetTextContent.topAnchor.constraint(equalTo: accountNameLabel.bottomAnchor, constant: 10),
            tweetTextContent.bottomAnchor.constraint(equalTo: commentButton.topAnchor, constant: -5)
        ]
        
        let commentButtomConstraints = [
            commentButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            commentButton.leadingAnchor.constraint(equalTo: tweetTextContent.leadingAnchor)
        ]
        let reTweetButtonConstraints = [
            reTweetButton.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor),
            reTweetButton.leadingAnchor.constraint(equalTo: commentButton.trailingAnchor,
                                                   constant: gapBetweenActionButtons)
        ]
        
        let likeButtonConstraints = [
            likeButton.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor),
            likeButton.leadingAnchor.constraint(equalTo: reTweetButton.trailingAnchor,
                                                constant: gapBetweenActionButtons)
        ]
        
        let shareButtonConstraints = [
            shareButton.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor),
            shareButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor,
                                                 constant: gapBetweenActionButtons)
        ]
        
        NSLayoutConstraint.activate(avaterImageViewConstraints)
        NSLayoutConstraint.activate(accountNameConstraints)
        NSLayoutConstraint.activate(userNameLabelConstraints)
        NSLayoutConstraint.activate(tweetTextContentConstraints)
        NSLayoutConstraint.activate(commentButtomConstraints)
        NSLayoutConstraint.activate(reTweetButtonConstraints)
        NSLayoutConstraint.activate(likeButtonConstraints)
        NSLayoutConstraint.activate(shareButtonConstraints)
        
    }
}
