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
        
        let vc1 = UINavigationController (rootViewController: HomeViewController () )
        let vc2 = UINavigationController(rootViewController: SearchViewController ( ))
        let vc3 = UINavigationController(rootViewController: NotificationsViewController () )
        let vc4 = UINavigationController (rootViewController: DirectMessagesViewController ( ))
        vc1.tabBarItem.image = UIImage (systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage (systemName: "house. fill")
        vc2.tabBarItem.image = UIImage (systemName: "magnifyingglass")
        vc3.tabBarItem.image = UIImage (systemName: "bell")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        vc4.tabBarItem.image = UIImage (systemName: "envelop")
        vc4.tabBarItem.selectedImage = UIImage (systemName: "envelop.fill")
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }


}
