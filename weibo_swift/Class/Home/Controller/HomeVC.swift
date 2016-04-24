//
//  HomeVC.swift
//  weibo_swift
//
//  Created by yh on 16/4/13.
//  Copyright © 2016年 yh. All rights reserved.
//

import UIKit

class HomeVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        unLoginView.setUnLoginView("visitordiscover_feed_image_house", message: "关注一些人，回这里看看有什么惊喜", isHome: true)
    }

}
