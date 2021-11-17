//
//  mainTabBarViewController.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/04.
//

import UIKit

class mainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func setupTab() {
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        
        let movieViewController = MovieViewController()
        movieViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        
        viewControllers = [homeViewController,movieViewController]
    }
}
