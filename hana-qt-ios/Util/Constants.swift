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
    }
    
    struct URL {
        static let base = "http://seongho.pythonanywhere.com/api/"
        static let blog = base + "blog/"
    }
    
    struct Margin {
        static let base = CGFloat(16)
    }
}
