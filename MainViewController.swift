//
//  MainViewController.swift
//  IOSCarWash
//
//  Created by 莲莲 on 15-3-18.
//  Copyright (c) 2015年 www.cfl. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //通过stroyboard的名字获取stroyboard
        let story_homepage = UIStoryboard(name: "homepage", bundle: nil)
        let story_order = UIStoryboard(name: "order", bundle: nil)
        let story_aboutme = UIStoryboard(name: "aboutme", bundle: nil)
        
        //获取tab对应的第一个controller
        let homepage_viewcontroller = story_homepage.instantiateViewControllerWithIdentifier("homepage") as HomePageController
        let order_viewcontroller = story_order.instantiateViewControllerWithIdentifier("order") as OrderController
        let aboutme_viewcontroller=story_aboutme.instantiateViewControllerWithIdentifier("aboutme") as AboutMeController
        
        //设置每个tab的内容
        let img_homepage=UIImage(named:"homepage.png")
        let img_order=UIImage(named:"order.png")
        let img_aboutme=UIImage(named:"aboutme.png")
        
        homepage_viewcontroller.tabBarItem = UITabBarItem(title: "首页", image: img_homepage, tag: 0)
        
        order_viewcontroller.tabBarItem=UITabBarItem(title: "订单", image: img_order, tag: 1)
        aboutme_viewcontroller.tabBarItem=UITabBarItem(title: "我的", image: img_aboutme, tag: 2)
        
         self.viewControllers = [homepage_viewcontroller, order_viewcontroller,aboutme_viewcontroller]
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */

   
}
