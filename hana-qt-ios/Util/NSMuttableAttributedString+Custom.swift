//
//  NSAttributedString+Custom.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 5..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

extension NSMutableAttributedString {
    
    func applyBodyParagrah(){
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = Constants.Font.LineSpacing.medium
        paragraphStyle.alignment = .left
        
        let fullRange = NSRange(location: 0, length: self.length)
        self.addAttribute(.font, value: UIFont(customFont: .NanumMyeongjo, withCustomSize: .medium) as Any, range: fullRange)
        self.addAttribute(.paragraphStyle, value: paragraphStyle as Any, range: fullRange)
    }
}
