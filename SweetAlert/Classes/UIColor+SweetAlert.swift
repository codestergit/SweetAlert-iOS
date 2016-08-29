//
//  UIColor+SweetAlert.swift
//  Pods
//
//  Created by Javier Fuchs on 8/29/16.
//
//

import Foundation

extension UIColor {
    public class func colorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
