//
//  ViewController.swift
//  TwttrClone
//
//  Created by Amr Mohamad on 31/01/2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        // MARK: - root VC
        let homeVC = UINavigationController (rootViewController: HomeViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let notificationsVC = UINavigationController(rootViewController: NotificationsViewController())
        let DMsVC = UINavigationController (rootViewController: DirectMessagesViewController())
        
        // MARK: - set icon for each tab
        homeVC.tabBarItem.image = UIImage (systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage (systemName: "house.fill")
        
        searchVC.tabBarItem.image = UIImage (systemName: "magnifyingglass")
        
        notificationsVC.tabBarItem.image = UIImage (systemName: "bell")
        notificationsVC.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
        DMsVC.tabBarItem.image = UIImage (systemName: "envelope")
        DMsVC.tabBarItem.selectedImage = UIImage (systemName: "envelope.fill")
        
        setViewControllers([homeVC,searchVC,notificationsVC,DMsVC], animated: true)
    }


}

