//
//  PostModel.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import SwiftyJSON

class PostModel {
    var title: String?
    var lectio: String?
    var meditatio: String?
    var oratio: String?
    var contemplatio: String?
    
    init(data:Data) {
        let json = JSON(data: data)
        self.lectio = "\(json["lectio"])"
        self.meditatio = "\(json["meditatio"])"
        self.oratio = "\(json["oratio"])"
        self.contemplatio = "\(json["contemplatio"])"
    }
    
//    func parse(data:Data){
//        let json = JSON(data: data)
//        self.lectio = "\(json["lectio"])"
//        self.meditatio = "\(json["meditatio"])"
//        self.oratio = "\(json["oratio"])"
//        self.contemplatio = "\(json["contemplatio"])"
//    }
}
