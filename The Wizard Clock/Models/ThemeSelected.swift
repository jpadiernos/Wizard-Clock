//
//  ThemeSelected.swift
//  The Wizard Clock
//
//  Created by Joshua Dean on 4/28/20.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

struct ThemeSelected {
    
    var theme: Theme?

    mutating func buildTheme(themeName: String, bgName: String, hrName: String, minName: String) {
        
        let name: String
        let bg, hr, min: UIImage
        
        switch themeName {
        case "Nature":
            name = themeName
        default:
            name = "Nature"
        }
        
        switch bgName {
        case "Default":
            bg = #imageLiteral(resourceName: "sampleBG")
        default:
            bg = #imageLiteral(resourceName: "defaultImage")
        }
        
        switch hrName {
        case "Trees":
            hr = #imageLiteral(resourceName: "SmallTree")
        default:
            hr = #imageLiteral(resourceName: "defaultImage")
        }
        
        switch minName {
        case "Sun":
            min = #imageLiteral(resourceName: "Sun")
        case "Bird":
            min = #imageLiteral(resourceName: "Bird-1")
        default:
            min = #imageLiteral(resourceName: "defaultImage")
        }
        
        theme = Theme(name: name, bgImage: bg, hrImage: hr, minImage: min)
    }
    
    func getBgImage() -> UIImage {
        return theme?.bgImage ?? #imageLiteral(resourceName: "nullImage")
    }
    
    func getHrImage() -> UIImage {
        return theme?.hrImage ?? #imageLiteral(resourceName: "nullImage")
    }
    
    func getMinImage() -> UIImage {
        return theme?.minImage ?? #imageLiteral(resourceName: "nullImage")
    }
    
}
