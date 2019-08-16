//
//  LMHomeViewController.swift
//  Lumen
//
//  Created by yangjie on 2019/8/16.
//  Copyright © 2019 yangjie. All rights reserved.
//

import UIKit
import MJRefresh

class MCHomeViewController: MQBaseViewController {

    @IBOutlet weak var mainCollection: UICollectionView!
    
    @IBOutlet weak var topView_height: NSLayoutConstraint!
    
    var viewModel: MCHomeViewModel = MCHomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        topView_height.constant = MQNavigationBarHeight
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func searchViewTap(_ sender: UITapGestureRecognizer) {
        //跳到搜索页
    }
    
}

extension MCHomeViewController {
    func setupSubView() -> Void {
        mainCollection.mj_header = MJRefreshNormalHeader {
            
        }
        mainCollection.mj_footer = MJRefreshAutoFooter {
            
        }
    }
}

extension MCHomeViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.listArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MCHomeMenuCVCell", for: indexPath) as! MCHomeMenuCVCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
