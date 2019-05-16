//
//  StringHelper.swift
//  LianYouPin
//
//  Created by 小唐 on 2019/4/11.
//  Copyright © 2019 COMC. All rights reserved.
//
//  String 小助手

import Foundation

class StringHelper {
    
    /// 是否为空
    class func isEmpty(for string: String?) -> Bool {
        guard let string = string else {
            return true
        }
        return string.isEmpty
    }
    
}
