//
//  LoginViewController.swift
//  The Wizard Clock
//
//  Created by Joshua Dean on 4/28/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func continuePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThemeSelection", sender: self)
    }
    
}
