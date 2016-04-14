//
//  MainTabBarVC.swift
//  weibo_swift
//
//  Created by yh on 16/4/13.
//  Copyright © 2016年 yh. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化自控制器
        initSubVC()
        
        
    }

    func initSubVC(){
        tabBar.tintColor = UIColor.orangeColor()
        initChildVC("HomeVC", title: "首页", imageName: "tabbar_home")
        initChildVC("DiscoveryVC", title: "发现", imageName: "tabbar_discover")
        initChildVC("MessageVC", title: "消息", imageName: "tabbar_message_center")
        initChildVC("ProfileVC", title: "我", imageName: "tabbar_profile")
    }
    
    func initChildVC(VCName:String,title:String,imageName:String){
        let paceName = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String
        let childVCClass:AnyClass? = NSClassFromString(paceName + "." + VCName)
        let childVCType = childVCClass as! UIViewController.Type
        let childVC = childVCType.init()
        let navVC = MainNavigationVC()
        navVC .addChildViewController(childVC)
        childVC.title = title
        childVC.tabBarItem.image = UIImage.init(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage.init(named: imageName + "_highlighted")
        self.addChildViewController(childVC)
    }

}
