//
//  MQTabbarController.swift
//  MMQRCode
//
//  Created by yangjie on 2019/7/25.
//  Copyright © 2019 yangjie. All rights reserved.
//

import UIKit

class MCTabbarController: UITabBarController {
    var homeVC :LMHomeViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let childArr: [String] = ["LMHomeViewController"]
        for vc in childArr {
            addChildVC(str: vc)
        }
//        homeVC = UIStoryboard(name: "MQHome", bundle: nil).instantiateViewController(withIdentifier: "homeVC") as? MQHomeVC
//        guard let home = homeVC else {
//            return;
//        }
//        let homeNavi = MQBaseNavigationViewController(rootViewController: home)
//        homeNavi.title = "主页"
//        addChild(homeNavi)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func addChildVC(str: String) -> Void {
        
    }

}
