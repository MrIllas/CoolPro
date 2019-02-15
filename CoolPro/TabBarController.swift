//
//  TabBarController.swift
//  CoolPro
//
//  Created by Robert Recorda on 23/1/19.
//  Copyright © 2019 RobertRecordà. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //LOAD
        
        iniTabBar()
        
        
    }
    
    func iniTabBar(){
        //Common settings set up
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.lightGray], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
        
        //Sets up every item of the tabBar
        
        tabBarItem = self.tabBar.items![0]
        tabBarItem.image = UIImage(named: "totoro_black")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named: "totoro_grey")?.withRenderingMode(.alwaysOriginal)
        
        tabBarItem = self.tabBar.items![1]
        tabBarItem.image = UIImage(named: "search_black")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named: "search_grey")?.withRenderingMode(.alwaysOriginal)
        
    }
    
    
}
