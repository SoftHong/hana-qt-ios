//
//  UIFont+Custom.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

enum CustomFont: String {
    case NanumMyeongjo = "NanumMyeongjo"
    case MyeongjoBold = "NanumMyeongjoBold"
    case MyeongjoExtraBold = "NanumMyeongjoExtraBold"
    case SDMiSaeng = "SDMiSaeng"
    case TimesNewRoman = "Times New Roman"
}

enum CustomFontSize: Float{
    case small = 10
    case medium = 16
    case large = 25.6
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

