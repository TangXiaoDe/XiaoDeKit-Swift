//
//  UILabel+Extension.swift
//  SwiftKit-XiaoDe
//
//  Created by 小唐 on 13/02/2018.
//  Copyright © 2018 TangXiaoDe. All rights reserved.
//
//  UILabel的扩展

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String?, font: UIFont, textColor: UIColor, alignment: NSTextAlignment = .left, numberOfLines: Int = 1) {
        self.init(frame: CGRect.zero)
        self.textColor = textColor
        self.font = font
        self.text = text
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
    }
    
}
