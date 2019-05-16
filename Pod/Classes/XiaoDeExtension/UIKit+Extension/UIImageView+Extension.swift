//
//  UIImageView+Extension.swift
//  SwiftKit-XiaoDe
//
//  Created by 小唐 on 13/02/2018.
//  Copyright © 2018 TangXiaoDe. All rights reserved.
//
//  UIImageView的扩展

import Foundation
import UIKit

extension UIImageView {
    
    /**
     UIView也有同样的便利构造，这里不能重写也不能使用，但TS+工程里却都存在且不用重写
    
    /// 带圆角的图片视图(可附加边框border)
    convenience init(cornerRadius: CGFloat, borderWidth: CGFloat = 0, borderColor: UIColor = UIColor.clear) {
        self.init(frame: CGRect.zero)
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        // 图片拉伸样式设置
        self.contentMode = .scaleAspectFill
    }
     **/
 
}
