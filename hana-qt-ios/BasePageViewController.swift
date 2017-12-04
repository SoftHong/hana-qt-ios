//
//  BasePageViewController.swift
//  hana-qt-ios
//
//  Created by 홍성호 on 2017. 12. 4..
//  Copyright © 2017년 홍성호. All rights reserved.
//

import UIKit

class BasePageViewController: UIViewController {

    var bodyLabel: UILabel?
    var scrollView: UIScrollView?
    var postModel: PostModel?{
        didSet{
            self.updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI(){
        
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
