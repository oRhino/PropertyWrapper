//
//  LazyConstant.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/26.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation

@propertyWrapper
public struct LazyConstant<T> {
    private var storage: T?
    let constructor: () -> T
    
    public init(wrappedValue constructor: @autoclosure @escaping () -> T){
        self.constructor = constructor
    }
    
    public var wrappedValue:T{
        mutating get{
            let value:T
            if let storage = storage {
                value = storage
            }else{
                value = constructor()
                storage = value
            }
            return value
        }
        set{
            storage = newValue
        }
    }
}
