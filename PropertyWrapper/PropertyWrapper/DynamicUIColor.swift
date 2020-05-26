//
//  DynamicUIColor.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/25.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation
import UIKit

@propertyWrapper
public struct DynamicUIColor{
    
    let light:UIColor
    let dark:UIColor
    
    public init(light:UIColor,dark:UIColor){
        self.light = light
        self.dark = dark
    }
    
    public var wrappedValue:UIColor{
        if  #available(iOS 13.0, *) {
            switch UITraitCollection.current.userInterfaceStyle {
            case .dark:
                return dark
            case .light, .unspecified:
                return light
            @unknown default:
                return light
            }
        }else{
            return light
        }
    }
}
