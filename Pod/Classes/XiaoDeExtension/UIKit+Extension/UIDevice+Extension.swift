//
//  UIDevice+Extension.swift
//  SwiftKit-XiaoDe
//
//  Created by 小唐 on 20/06/2018.
//  Copyright © 2018 TangXiaoDe. All rights reserved.
//
//  UIDevice的扩展

import Foundation
import UIKit

// MARK: - 机型系列判断：使用size而不是width或height，向后兼容

extension UIDevice {
    
    /// iPhone5系列判断(640, 1136)
    public func isiPhone5series() -> Bool {
        //let isFlag: Bool = UIScreen.main.bounds.size.width == 320 // iPhone4 + iPhone5
        let isFlag: Bool = UIScreen.main.bounds.size.equalTo(CGSize(width: 320, height: 568))
        return isFlag
    }
    
    /// iPhoneX判断
    public func isiPhoneX() -> Bool {
        //let isFlag: Bool = UIScreen.main.bounds.size.height == 812    // iPhoneX + iPhone?
        let isFlag: Bool = UIScreen.main.bounds.size.equalTo(CGSize(width: 375, height: 812))
        return isFlag
    }
    
}
