//
//  UIButton+Extension.swift
//  SwiftKit-XiaoDe
//
//  Created by 小唐 on 13/02/2018.
//  Copyright © 2018 TangXiaoDe. All rights reserved.
//
//  UIButton的扩展

import Foundation
import UIKit

extension UIButton {
    func set(title: String, titleColor: UIColor, icon: UIImage?, bgColor: UIColor?, for state: UIControlState) -> Void {
        self.setTitle(title, for: state)
        self.setTitleColor(titleColor, for: state)
        self.setImage(icon, for: state)
        // 根据颜色构造图片
        //self.setBackgroundImage(nil, for: state)
    }
}
