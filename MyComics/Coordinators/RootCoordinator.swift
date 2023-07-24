//
//  RootCoordinator.swift
//  MyComics
//
//  Created by Кирилл Копытин on 28.06.2023.
//

import UIKit

final class RootCoordinator {
    
    private weak var window: UIWindow?
    
    func start(in window: UIWindow) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .navigationBarGray
        
        let charactersNavigationController = UINavigationController()
        
        let charactersViewController = CharactersModuleBuilder.build(charactersNavigationController)
        charactersNavigationController.pushViewController(charactersViewController, animated: false)
        charactersNavigationController.tabBarItem.image = UIImage(systemName: "aqi.medium")
        charactersNavigationController.tabBarItem.title = LocalizationKeys.localized(.charactersTabItem)
        
        let comicsVC = UINavigationController(rootViewController: ComicsModuleBuilder.build())
        comicsVC.tabBarItem.image = UIImage(systemName: "magazine")
        comicsVC.tabBarItem.title = LocalizationKeys.localized(.comicsTabItem)
        
        let profileVC = UINavigationController(rootViewController: ProfileModuleBuilder.build())
        profileVC.tabBarItem.image = UIImage(systemName: "person.fill.viewfinder")
        profileVC.tabBarItem.title = LocalizationKeys.localized(.profileTabItem)
        charactersNavigationController.tabBarItem.image = UIImage(systemName: "bonjour")
        charactersNavigationController.tabBarItem.title = LocalizationKeys.localized(.charactersTabItem)
        
        let comicsVC = UINavigationController(rootViewController: ComicsModuleBuilder.build())
        comicsVC.tabBarItem.image = UIImage(systemName: "book.fill")
        comicsVC.tabBarItem.title = LocalizationKeys.localized(.comicsTabItem)
        
        let authNavigationController = UINavigationController()
        
        let authVC = AuthModuleBuilder.build(authNavigationController)
        authNavigationController.pushViewController(authVC, animated: false)
        authNavigationController.tabBarItem.image = UIImage(systemName: "person.crop.circle.dashed")
        authNavigationController.tabBarItem.title = LocalizationKeys.localized(.profileTabItem)
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = [charactersNavigationController, comicsVC, authNavigationController]
        
        tabBarVC.viewControllers?.forEach {
            if let navigationController = $0 as? UINavigationController {
                navigationController.navigationBar.prefersLargeTitles = true
                navigationController.navigationBar.standardAppearance = appearance
                navigationController.navigationBar.scrollEdgeAppearance = appearance
                navigationController.navigationBar.compactAppearance = appearance
            }
        }
        
        window.makeKeyAndVisible()
        window.rootViewController = tabBarVC
        self.window = window
    }
}
