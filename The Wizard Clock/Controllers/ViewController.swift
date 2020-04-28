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
        let date = Date()
        let calendar = Calendar.current
        var hour = calendar.component(.hour, from: date)
        if hour > 12{
            hour = hour - 12
        }
        return hour
    }
    
    func getMinute() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let minute = calendar.component(.minute, from: date)
        return minute
    }
    
    func heightPositionCalc(screenSize: CGRect) -> Int{
        //This calculation should go into the theme specific class
        let minute = getMinute()
        
        let angle = 3.0 * Double(minute) * Double.pi / 180
        let sinVal = sin(angle)
        print(sinVal)
        let fullHeight = Double(screenSize.height) * (1.0 - sinVal)
        let heightPosition = fullHeight/3
        print(heightPosition)
        return Int(heightPosition) + 10
    }
    
    func getHourPosition(screenSize: CGRect) -> CGRect {
        return CGRect(x: 400, y: 800, width: 100, height: 150)
    }
    
    func getMinutePosition(screenSize: CGRect) -> CGRect {
        let imageHeight = 20 //should come from the theme
        let imageWidth = 50 //should come from the theme
        
        var heightPosition: Int = Int(screenSize.height/3)
        var widthPosition: Int = 0
        
        heightPosition = heightPositionCalc(screenSize: screenSize)
        widthPosition = Int((Int(screenSize.width) - imageWidth) / 59 * getMinute())
        
        return CGRect(x: widthPosition, y: heightPosition, width: imageWidth, height: imageHeight)
    }
    
    func getBackgroundName() -> String {
        return "Sun_Background"
    }
    
    func getHourImageName(hour: Int) -> String {
        //Logic will be in here to get the appropriate hour image
        //from the theme
        return "Tree"
    }
    
    func getMinuteImageName(minute: Int) -> String {
        //Logic will be in here to get the appropriate minute image
        //from the theme
        return "Bird_Background"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize: CGRect = UIScreen.main.bounds
        let hoursFrame: CGRect = getHourPosition(screenSize: screenSize)
        let minutesFrame: CGRect = getMinutePosition(screenSize: screenSize)
        
        let backgroundName = getBackgroundName()
        let hoursName = getHourImageName(hour: getHour())
        let minutesName = getMinuteImageName(minute: getMinute())
        
        drawImage(imageName: backgroundName, position: screenSize)
        drawImage(imageName: hoursName, position: hoursFrame)
        drawImage(imageName: minutesName, position: minutesFrame)
        
        print(getHour())
        print(getMinute())
        
    }
}

