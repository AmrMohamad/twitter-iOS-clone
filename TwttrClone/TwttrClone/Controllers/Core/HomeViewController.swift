//
//  HomeViewController.swift
//  TwttrClone
//
//  Created by Amr Mohamad on 19/02/2023.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let titleScreen = UILabel(frame:CGRect(x:12,y:100,width: self.view.frame.size.width,height: 40))
        titleScreen.textColor = .black
        titleScreen.text = "Home Screen"
        self.view.addSubview(titleScreen)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
