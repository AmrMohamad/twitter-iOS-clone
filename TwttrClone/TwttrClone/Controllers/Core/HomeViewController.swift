//
//  HomeViewController.swift
//  TwttrClone
//
//  Created by Amr Mohamad on 19/02/2023.
//

import UIKit

class HomeViewController: UIViewController {

    let timeLineTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.indentifier)
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timeLineTableView.delegate = self
        timeLineTableView.dataSource = self
        view.addSubview(timeLineTableView)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timeLineTableView.frame = view.frame
    }

}

extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tweetCell = tableView.dequeueReusableCell(withIdentifier: TweetTableViewCell.indentifier, for: indexPath) as? TweetTableViewCell else {
            return UITableViewCell()
        }
        return tweetCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
