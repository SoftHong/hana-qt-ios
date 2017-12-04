//
//  UIFont+Custom.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

enum CustomFont: String {
    case TimesNewRoman = "Times New Roman"
}

enum CustomFontSize: Float{
    case small = 16
    case medium = 19.2
    case large = 30.72
}

extension UIFont {
    /**
     Initializes an UIFont using a predefined enumeration and a given size.
     */
    convenience init?(customFont: CustomFont, withSize size: CGFloat) {
        self.init(name: customFont.rawValue, size: size)
    }
    
    convenience init?(customFont: CustomFont, withCustomSize customSize: CustomFontSize) {
        self.init(name: customFont.rawValue, size: CGFloat(customSize.rawValue))
    }
}

