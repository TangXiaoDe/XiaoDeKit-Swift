//
//  CGSize+Extension.swift
//  XiaoDeKit
//
//  Created by 小唐 on 20/06/2018.
//  Copyright © 2018 XiaoDeStudio. All rights reserved.
//
//  CGSize的扩展

import Foundation
import UIKit

public extension CGSize {

    /// 宽高都为最大值的尺寸
    static let max: CGSize = CGSize(width: CGFloat(MAXFLOAT), height: CGFloat(MAXFLOAT))
    

}

// MARK: - 等比拉伸
public extension CGSize {

    /// 对指定尺寸等比拉伸，其中宽拉伸到指定尺寸
    internal static func scaleAspectSize(_ size: CGSize, forWidth width: CGFloat) -> CGSize {
        return size.scaleAspectForWidth(width)
    }
    /// 等比拉伸，以宽为准
    func scaleAspectForWidth(_ width: CGFloat) -> CGSize {
        let fHeight: CGFloat
        if self.width <= 0.000_001 {
            fHeight = 0
        } else {
            fHeight = width * self.height / self.width
        }
        let height: CGFloat = CGFloat(round(Double(CGFloat(fHeight))))
        return CGSize(width: width, height: height)
    }

    /// 对指定尺寸等比拉伸，其中高拉伸到指定尺寸
    static func scaleAspectSize(_ size: CGSize, forHeight height: CGFloat) -> CGSize {
        return size.scaleAspectForHeight(height)
    }
    /// 等比拉伸，以高为准
    func scaleAspectForHeight(_ height: CGFloat) -> CGSize {
        let fWidth: CGFloat
        if self.height <= 0.000_001 {
            fWidth = 0
        } else {
            fWidth = height * self.width / self.height
        }
        let width: CGFloat = CGFloat(round(Double(CGFloat(fWidth))))
        return CGSize(width: width, height: height)
    }

}
