//
//  WelcomeViewController.swift
//  SleepApp
//
//  Created by Bayu Yasaputro on 30/09/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var startedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setup() {
        startedButton.layer.cornerRadius = 24
        startedButton.layer.masksToBounds = true
    }

    @IBAction func startedButtonTapped(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main")
        
        let scene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = scene.windows.first!
        window.rootViewController = viewController
    }
}
