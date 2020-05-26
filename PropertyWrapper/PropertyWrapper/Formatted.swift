//
//  Formatted.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/26.
//  Copyright © 2020 CYZone. All rights reserved.
//

import Foundation


@propertyWrapper
struct Formatted {
    
    enum DateFormat:String {
        case iso8601 = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        case rfc339 = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        case full = "MMMM dd, YYYY"
    }
    
    var wrappedValue: Date
    
    let dateFormatter : DateFormatter
    
    var projectedValue :String{
        dateFormatter.string(from: wrappedValue)
    }
    
    
    init(wrappedValue:Date,with dateFormat:DateFormat) {
        self.wrappedValue = wrappedValue
        self.dateFormatter = DateFormatter()
        self.dateFormatter.dateFormat = dateFormat.rawValue
    }
}
