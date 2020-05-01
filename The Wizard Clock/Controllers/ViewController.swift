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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theme = NatureTheme()
        
        let clockTime = ClockTime()
        
        let screenSize: CGRect = theme.getBGPosition()
        let hoursFrame: CGRect = theme.getHrPosition(hour: clockTime.getHour())
        let minutesFrame: CGRect = theme.getMinPosition(minute: clockTime.getMinute())
        
        let backgroundName = theme.getBgImage()
        let hoursName = theme.getHrImage(hour: clockTime.getHour())
        let minutesName = theme.getMinImage(minute: clockTime.getMinute())
        
        drawImage(imageName: backgroundName, position: screenSize)
        drawImage(imageName: hoursName, position: hoursFrame)
        drawImage(imageName: minutesName, position: minutesFrame)
        
        
    }
}

