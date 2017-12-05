//
//  LectioViewController.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit
import SwiftRichString

class LectioViewController: BasePageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.makeView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    fileprivate func makeView(){
        
        let scrollView = UIScrollView()
        self.scrollView = scrollView

        let bodyLabel = UILabel()
        self.bodyLabel = bodyLabel
        bodyLabel.textAlignment = .left
        bodyLabel.numberOfLines = 0
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(bodyLabel)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: Constants.Margin.base).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: Constants.Margin.base).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -Constants.Margin.base).isActive = true
        bodyLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    override func updateUI(){
        
        if let bodyLabel = self.bodyLabel,
            let postModel = self.postModel,
            let lectio = postModel.lectio,
            bodyLabel.text != lectio
            {
                print(lectio)
                
                let title = Style.default{
                    
                    $0.font = FontAttribute.init(FontName.AppleSDGothicNeo_Medium, size: Constants.Font.Size.medium)
                    $0.color = UIColor.Custom.tint
                    $0.lineSpacing = Constants.Font.Size.small
                }
                
                let thinTitle = Style.default{
                    
                    $0.font = FontAttribute.init(FontName.AppleSDGothicNeo_Light, size: Constants.Font.Size.medium)
                    $0.color = UIColor.Custom.tint
                    $0.lineSpacing = Constants.Font.Size.small
                }
                
                let body = Style.default{
                    $0.font = FontAttribute.init(Constants.Font.Name.NanumMyeongjo, size: Constants.Font.Size.medium)
                    $0.lineSpacing = Constants.Font.Size.small
                    $0.color = UIColor.Custom.text
                }

                let regexpBibleTitle = "[**].+[**]"
                let regexpBibleTitleTag = "[**]"
                
                let ruleBibleTitle = RegExpPatternStyles(pattern: regexpBibleTitle){
                    
                    $0.font = FontAttribute.init(FontName.AppleSDGothicNeo_Medium, size: Constants.Font.Size.medium)
                    $0.color = UIColor.Custom.tint
                    }!

                let ruleBibleTitleTag = RegExpPatternStyles(pattern: regexpBibleTitleTag){
                
                    $0.paragraphSpacingBefore = Constants.Font.Size.medium
                    $0.lineSpacing = Constants.Font.Size.small
                    $0.font = FontAttribute.system(size: 0)
                    $0.align = .center
                }!
                
                let attributedString = "하나님 나라 읽기 ".set(style: title) + "Lectio\n".set(style: thinTitle) + lectio.set(regExpStyles: [ruleBibleTitle, ruleBibleTitleTag], default: body)
                
                bodyLabel.attributedText = attributedString
            }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
