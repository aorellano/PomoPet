//
//  TabController.swift
//  PomoPet
//
//  Created by Alexis Orellano on 2/2/21.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        tabBar.barTintColor = Theme.current.backgroundColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createTabOne()
    }
    
    func createTabOne() {
        let tabOne = HomeController()
        let tabOneItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        tabOne.tabBarItem = tabOneItem
        viewControllers = [tabOne]
    }
}
