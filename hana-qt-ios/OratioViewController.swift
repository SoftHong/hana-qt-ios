//
//  OratioViewController.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

class OratioViewController: BasePageViewController {

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
        bodyLabel.font = UIFont(customFont: .NanumMyeongjo, withCustomSize: .medium)
        
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
            let oratio = postModel.oratio
        {
            print(oratio)
            let attributedString = NSMutableAttributedString.init(string: oratio)
            attributedString.applyBodyParagrah()
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
