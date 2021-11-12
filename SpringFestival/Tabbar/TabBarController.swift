//
//  TabBarController.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/04.
//

import UIKit

class TabBarController: UITabBarController{
    
    private let home: UINavigationController = .init(rootViewController: HomeViewController())
    private let movie: UINavigationController = .init(rootViewController: MovieViewController())
    private let schedule: UINavigationController = .init(rootViewController: ScheduleViewController())
    private let areamap: UINavigationController = .init(rootViewController: AreaMapViewController())
    
    init() {
        super.init(nibName: nil, bundle: nil)
        delegate = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [home,movie,schedule,areamap]
        setupTab()
        
    }
    func setupTab() {
        UITabBar.appearance().tintColor = UIColor.black
        UITabBar.appearance().backgroundColor = UIColor.white
//        UITabBar.appearance().barTintColor = UIColor.red
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        UITabBar.appearance().isTranslucent = false
        
        home.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(systemName: "house"), tag: 0)
        movie.tabBarItem = UITabBarItem(title: "MOVIE", image: UIImage(systemName: "film"), tag: 1)
        schedule.tabBarItem = UITabBarItem(title: "SCHEDULE", image: UIImage(systemName: "calendar"), tag: 2)
        areamap.tabBarItem = UITabBarItem(title: "AREAMAP", image: UIImage(systemName: "map"), tag: 3)
    }
}
extension TabBarController: UITabBarControllerDelegate {
    
}
