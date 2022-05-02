//
//  TabBarController.swift
//  NavIgation
//
//  Created by Anna Ovodova on 28.03.2022.
//

import UIKit

class TabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }

    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }

    func setupVCs() {
        viewControllers = [
            createNavController(for: FeedViewController(), title: NSLocalizedString("Feed", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: ProfileViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
}
