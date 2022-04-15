//
//  MainTabBarController.swift
//  Auto
//
//  Created by Liza on 13.04.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor =  .white
        
        setupTabBar()
        
    }
    
    
    // MARK: - Methods
    
    private func setupTabBar() {
        
        let mainViewController = createNavController(vc: MainViewController(),
                                                     title: "Главный",
                                                     icon: "",
                                                     selectedIcon: "")
        
        let paymentViewController = createNavController(vc: PaymentViewController(),
                                                        title: "Оплата",
                                                        icon: "",
                                                        selectedIcon: "")
        
        let servicesViewController = createNavController(vc: ServicesViewController(),
                                                         title: "Услуги",
                                                         icon: "",
                                                         selectedIcon: "")
        
        let helpViewController = createNavController(vc: HelpViewController(),
                                                     title: "Помощь",
                                                     icon: "",
                                                     selectedIcon: "")
        
        viewControllers = [mainViewController, paymentViewController, servicesViewController, helpViewController]
    }
    
    private func createNavController(vc: UIViewController,
                                     title: String,
                                     icon: String,
                                     selectedIcon: String) -> UINavigationController {
        
        let item = UITabBarItem(title: title,
                                image: UIImage(named: icon),
                                selectedImage: UIImage(named: selectedIcon))
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
        
    }
    
}

