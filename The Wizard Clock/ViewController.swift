//
//  ViewController.swift
//  The Wizard Clock
//
//  Created by Daniel on 2/6/1399 AP.
//  Copyright © 1399 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var background = UIImage(named: "Sun_Background")
        imageView.image = background
    }


}

