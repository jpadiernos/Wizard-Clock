//
//  ViewController.swift
//  The Wizard Clock
//
//  Created by Daniel on 2/6/1399 AP.
//  Copyright © 1399 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func drawImage(imageName: String, position: CGRect){
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = position
        view.addSubview(imageView)
    }
    
    func getHour() -> Int {
        let dateComponent = DateComponents()
        return dateComponent.hour ?? 1
    }
    
    func getMinute() -> Int {
        let dateComponent = DateComponents()
        return dateComponent.minute ?? 0
    }
    
    func getHourPosition() -> CGRect {
        return CGRect(x: 400, y: 800, width: 100, height: 150)
    }
    
    func getMinutePosition() -> CGRect {
        return CGRect(x:100, y:50, width:50, height: 20)
    }
    
    func getBackgroundName() -> String {
        return "Sun_Background"
    }
    
    func getHourImageName() -> String {
        return "Tree"
    }
    
    func getMinuteImageName() -> String {
        return "Bird_Background"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let hoursFrame: CGRect = getHourPosition()
        let minutesFrame: CGRect = getMinutePosition()
        
        let backgroundName = getBackgroundName()
        let hoursName = getHourImageName()
        let minutesName = getMinuteImageName()
        
        drawImage(imageName: backgroundName, position: screenSize)
        drawImage(imageName: hoursName, position: hoursFrame)
        drawImage(imageName: minutesName, position: minutesFrame)
        
    }
}

