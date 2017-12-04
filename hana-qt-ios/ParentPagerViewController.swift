//
//  PagerTabViewController.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit
import Pageboy
import Tabman
import Alamofire
import SwiftyJSON

class ParentPagerViewController: TabmanViewController {

    var viewControllers: [BasePageViewController]?

    var postModel: PostModel?{
        didSet{
            self.updateUI()
            self.updateChildVC()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers = [LectioViewController(),
                                MeditatioViewController(),
                                OratioViewController(),
                                ContemplatioViewController()]
        
        self.makeView()
        self.makeBarPager()
        self.getPost()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getPost(){
        Alamofire.request(Constants.URL.blog).responseJSON { (response) in
            if let data = response.data {
                let postModel = PostModel.init(data: data)
                self.postModel = postModel
            }
        }
    }
    
    func updateUI(){
        
        if let postModel = self.postModel,
            let title = postModel.title{
            
            self.navigationItem.title = title
        }
    }
    
    func updateChildVC(){
        if let pageVCs = self.viewControllers{
            for pageVC in pageVCs{
                pageVC.postModel = postModel
            }
        }
    }
    
    fileprivate func makeView(){
        
        self.view.backgroundColor = UIColor.Custom.background
    }
    
    fileprivate func makeBarPager(){
        
        self.dataSource = self
        
        // configure the bar
        self.bar.items = [Item(title: "Lectio"),
                          Item(title: "Meditatio"),
                          Item(title: "Oratio"),
                          Item(title: "Contemplatio")]
        
        self.bar.appearance = TabmanBar.Appearance({ (appearance) in
            
            // customise appearance here
            appearance.indicator.color = UIColor.Custom.tint
            appearance.indicator.isProgressive = true
            appearance.text.font = UIFont(customFont: .TimesNewRoman, withCustomSize: .medium)
            appearance.layout.extendBackgroundEdgeInsets = true
            appearance.layout.interItemSpacing = 0
            appearance.layout.edgeInset = 0
        })

        self.bar.style = .buttonBar
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

extension ParentPagerViewController: PageboyViewControllerDataSource{
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        
        if let viewControllers = self.viewControllers{
            return viewControllers.count
        }else{
            return 0
        }
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        
        if let viewControllers = self.viewControllers{
            return viewControllers[index]
        }else{
            return nil
        }
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
