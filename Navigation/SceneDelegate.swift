//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Nikolay on 25.07.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
        func createFeedViewController() -> UINavigationController {
            let feedViewController = FeedViewController()
            feedViewController.title = "Лента"
            feedViewController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "doc.richtext"), tag: 0)
            return UINavigationController(rootViewController: feedViewController)
        }
        
        func createProfileViewController() -> UINavigationController {
            let profileViewController = ProfileViewController()
            profileViewController.title = "Профиль"
            profileViewController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 1)
            return UINavigationController(rootViewController: profileViewController)
        }
        
        func createTabBarController() -> UITabBarController {
            
            let tabBarController = UITabBarController()
            
            UITabBar.appearance().backgroundColor = UIColor.white
            
            tabBarController.viewControllers = [createFeedViewController(), createProfileViewController()]
            tabBarController.selectedIndex = 0
            return tabBarController
        }
        
        
        window.rootViewController = createTabBarController()
        window.makeKeyAndVisible()
        
        self.window = window
        
    }
}
