//
//  ViewController.swift
//  PropertyWrapper
//
//  Created by cyzone on 2020/5/25.
//  Copyright © 2020 CYZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

//https://nshipster.com/propertywrapper/
//https://github.com/apple/swift-evolution/blob/master/proposals/0258-property-wrappers.md
//https://juejin.im/post/5df05060518825122030809e
//

//
/*
 #属性包装器是什么?
 - @-prefixed property attributes
 - Describe policy behind data access
 - Allow access to higher-level behavior previously reserved for language features
 - Document semantics at point of definition
 - Write management code once
    Reuse it by applying it to multiple properties
    Anything you want them to be
 
 
# Where to use Property wrappers
 
- Separate property storage from property definition 将属性存储与属性定义分离
- Constrain values  约束值
- transform values on property assignment 属性赋值时转换
- reduce boilerplate code 减少样板代码
- add missing functionality without changing(extend) the type 添加缺少的功能而不更改(扩展)类型
- influence specific instance vs. all instance 影响特定实例而不是所有实例
- As man-in-the-middle for data access 作为数据访问的中间人

 
 # Where NOT to use Property Wrappers
 - With let properties
 - For implementations with throws 属性不能标记为throws
 - With local properties(not yet)
 - When referencing property owner
 - To annotate keys or values in Collections 不能使用属性包装器来注释集合中的键或值类型 //var headers: [@CaseInsensitive String: String] // ❌
 - Combining multiple wrappers 属性包装器的组成不是交换操作；声明它们的顺序会影响它们的行为。最外面的包装器作用于最里面的包装器类型的值
 - Objective-c
 
    
 不能使用属性包装器来定义一个新类型，并限制可能的值。
 typealias pH = @Clamping(0...14) Double // ❌
 func acidity(of: Chemical) -> pH {}
 

 # Projected Value within a Property Wrapper
 
1.Accessed through $-prefix to prevent collisions 通过$属性来访问,避免冲突
2.Expose additional functionality  添加附加功能
3.Can be of another type than the Property itself 可以是另外一种类型而不是属性本身
4.Can also be self to expose an instance of the wrapper 可以是self,暴露属性包装器


*/
