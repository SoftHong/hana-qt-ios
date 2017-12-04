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

class HanaPagerViewController: TabmanViewController {

    let viewControllers = [ViewController(), ViewController()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        
        // configure the bar
        self.bar.items = [Item(title: "Page 1"),
                          Item(title: "Page 2")]
        
        self.bar.appearance = TabmanBar.Appearance({ (appearance) in
            
            // customise appearance here
            appearance.indicator.color = UIColor.red
            appearance.indicator.isProgressive = true
        })
        
        self.bar.style = .blockTabBar
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension HanaPagerViewController: PageboyViewControllerDataSource{
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
