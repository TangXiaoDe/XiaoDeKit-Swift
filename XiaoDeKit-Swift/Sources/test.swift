//  UIColor的扩展

import Foundation
import UIKit


// MARK: - Initialize
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hex: Int) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff)
    }
    
    convenience init(hex: Int, alpha: CGFloat) {
        self.init(red: CGFloat((hex >> 16) & 0xff) / 255.0, green: CGFloat((hex >> 8) & 0xff) / 255.0, blue: CGFloat(hex & 0xff) / 255.0, alpha: alpha)
    }
}


// MARK: - Random
extension UIColor
{
    static var random: UIColor {
        return UIColor.randomColor()
    }
    
    // randomColor
    public class func randomColor() -> UIColor {
        let randR = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randG = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randB = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        let randA = CGFloat(arc4random_uniform(256)) / CGFloat(255.0)
        
        return UIColor(red: randR, green: randG, blue: randB, alpha: randA)
    }
}

