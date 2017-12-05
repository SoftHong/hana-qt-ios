//
//  Constants.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

struct Constants {
    struct Font{
        struct LineSpacing{
            static let small = CGFloat(6.25)
            static let medium = CGFloat(10)
        }
        struct Size {
            static let small: Float = 10.0
            static let medium: Float = 16.0
            static let large: Float = 25.6
        }
        struct Name {
            static let NanumMyeongjo = "NanumMyeongjo"
            static let MyeongjoBold = "NanumMyeongjoBold"
            static let MyeongjoExtraBold = "NanumMyeongjoExtraBold"
            static let SDMiSaeng = "SDMiSaeng"
            static let TimesNewRoman = "Times New Roman"
        }
    }
    
    struct URL {
        static let base = "http://seongho.pythonanywhere.com/api/"
        static let blog = base + "blog/"
    }
    
    struct Margin {
        static let base = CGFloat(16)
    }
}
