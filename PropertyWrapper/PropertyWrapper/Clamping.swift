//
//  Clamping.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/25.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation

@propertyWrapper
public struct Clamping<T:Comparable>{
    
    private var value:T
    let min: T
    let max:T
    
    //wrappedValue的访问权限必须大于等于声明它的类型
    public var wrappedValue:T{
        get{
            return value
        }
        set{
            value = clamp(value: newValue)
        }
    }
    
    init(wrappedValue:T,min:T,max:T) {
        self.min = min
        self.max = max
        self.value = wrappedValue
        self.wrappedValue = wrappedValue
    }
    
    private func clamp(value:T) -> T{
        if value < min{
            return min
        }else if value > max{
            return max
        }else{
            return value
        }
    }
}
