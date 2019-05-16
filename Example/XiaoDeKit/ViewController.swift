//
//  ViewController.swift
//  XiaoDeKit
//
//  Created by 小唐 on 2019/5/16.
//  Copyright © 2019 TangXiaoDe. All rights reserved.
//

import UIKit
import XiaoDeKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //
        let _ = XiaoDeKit.UIColor.randomColor()
        // 
        let _ = XDPackageTimer.init(target: self, selector: #selector(timered))
        
        
        
    }
    
    @objc fileprivate func timered() -> Void {
        
    }


}


extension UIColor {
    static var random: UIColor {
        return UIColor.randomColor()
    }
    
    // randomColor
    class func randomColor() -> UIColor {
        let randR = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randG = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randB = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randA = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        
        return UIColor(red: randR, green: randG, blue: randB, alpha: randA)
    }
}
