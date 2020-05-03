//
//  ThemeSelectionViewController.swift
//  The Wizard Clock
//
//  Created by Joshua Dean on 4/28/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    var themeName = "Nature"
    var bgName = "Default"
    var hrName = "Trees"
    var minName = "Sun"
    
    @IBOutlet weak var themeNatureButton: UIButton!
    
    @IBOutlet weak var themeJerseyButton: UIButton!
    
    @IBOutlet weak var bgDefaultButton: UIButton!
    
    @IBOutlet weak var hrTreesButton: UIButton!
    
    @IBOutlet weak var minSunButton: UIButton!
    @IBOutlet weak var minBirdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func themeChange(_ sender: UIButton) {
        themeNatureButton.isSelected = false
        themeJerseyButton.isSelected = false
        sender.isSelected = true
        themeName = sender.currentTitle!
    }
    
    @IBAction func bgChanged(_ sender: UIButton) {
        bgDefaultButton.isSelected = false
        sender.isSelected = true
        bgName = sender.currentTitle!
    }
    
    @IBAction func hrChanged(_ sender: UIButton) {
        hrTreesButton.isSelected = false
        sender.isSelected = true
        hrName = sender.currentTitle!
    }
    
    @IBAction func minChanged(_ sender: UIButton) {
        minSunButton.isSelected = false
        minBirdButton.isSelected = false
        sender.isSelected = true
        minName = sender.currentTitle!
    }
    
    @IBAction func displayThemePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ThemeResultsViewController
            destinationVC.themeName = themeName
        }
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
