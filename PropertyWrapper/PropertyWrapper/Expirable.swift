//
//  Expirable.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/26.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation


@propertyWrapper
struct Expirable<Value> {
    
    var projectedValue:Expirable{
        return self
    }
    
    var wrappedValue : Value?{
        get{
            isValid ? storage?.value : nil
        }
        set{
            storage = newValue.map{ newValue in
                let expirationDate = Date().addingTimeInterval(duration)
                return (newValue,expirationDate)
            }
        }
    }
    let duration : TimeInterval
    private var storage:(value:Value,expirationDate:Date)?
    
    //是否有效
    var isValid:Bool {
        guard let storage = storage else{
            return false
        }
        return storage.expirationDate >= Date()
    }
    init(duration:TimeInterval) {
        self.duration = duration
    }
}




