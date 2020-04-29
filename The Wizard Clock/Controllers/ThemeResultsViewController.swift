//
//  ThemeResultsViewController.swift
//  The Wizard Clock
//
//  Created by Joshua Dean on 4/28/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ThemeResultsViewController: UIViewController {

    var bgImage: UIImage?
    var hrImage: UIImage?
    var minImage: UIImage?
    
    @IBOutlet weak var bgView: UIImageView!
    @IBOutlet weak var hrView: UIImageView!
    @IBOutlet weak var minView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgView.image = bgImage
        hrView.image = hrImage
        minView.image = minImage

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapPressed(_ sender: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
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
