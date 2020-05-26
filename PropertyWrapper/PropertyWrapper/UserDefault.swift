//
//  UserDefault.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/25.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation

protocol UserdefaultsType {}
extension Bool:UserdefaultsType{}
extension Int:UserdefaultsType{}
extension Float:UserdefaultsType{}
extension Double:UserdefaultsType{}
extension String:UserdefaultsType{}
extension URL:UserdefaultsType{}
extension Data:UserdefaultsType{}
extension Date:UserdefaultsType{}

@propertyWrapper
struct UserDefault<T:UserdefaultsType> {
    let key:String
    let defaultValue:T
    
    var wrappedValue:T{
        set{
            UserDefaults.standard.set(newValue, forKey: key)
        }
        get{
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
    }
}
