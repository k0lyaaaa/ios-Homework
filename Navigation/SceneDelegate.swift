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
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let tabBarController = createTabBarController()
        
        window?.rootViewController = tabBarController;        window?.makeKeyAndVisible()
    }
    
    func createFeedViewController() -> UINavigationController {
        let feedViewController = FeedViewController()
        feedViewController.title = "Лента"
        feedViewController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "doc.richtext"), tag: 0)
        return UINavigationController(rootViewController: feedViewController)
    }
    
    func createProfileViewController() -> UINavigationController {
        let profileViewController = LoginViewController()
        profileViewController.title = "Профиль"
        profileViewController.tabBarItem = UITabBarItem(title: "Профиль",image: UIImage(systemName:"person.circle"), tag: 1)
        return UINavigationController(rootViewController: profileViewController)
    }
    
    func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        UITabBar.appearance().backgroundColor = .systemGray;        tabBarController.viewControllers = [createFeedViewController(), createProfileViewController()]
        return tabBarController
        
    }
    
}
