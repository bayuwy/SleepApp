//
//  MainViewController.swift
//  SleepApp
//
//  Created by Bayu Yasaputro on 04/10/22.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        // Trait collection will change. Use this one so you know what the state is changing to.
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setup()
    }
    
    func setup() {
        let isLight = self.traitCollection.userInterfaceStyle == .light
        tabBar.tintColor = UIColor(named: "TabBarItemColor") //isLight ? UIColor(rgb: 0x8E97FD) : UIColor.red
        tabBar.unselectedItemTintColor = isLight ? UIColor(rgb: 0xA0A3B1) : UIColor.white
    }
}
