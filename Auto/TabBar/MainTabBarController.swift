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
                                                     icon: "ic_home",
                                                     selectedIcon: "ic_home_un")
        
        let paymentViewController = createNavController(vc: PaymentViewController(),
                                                        title: "Оплата",
                                                        icon: "ic_payment",
                                                        selectedIcon: "ic_payment_un")
        
        let servicesViewController = createNavController(vc: ServicesViewController(),
                                                         title: "Услуги",
                                                         icon: "ic_services",
                                                         selectedIcon: "ic_services_un")
        
        let helpViewController = createNavController(vc: HelpViewController(),
                                                     title: "Помощь",
                                                     icon: "ic_help",
                                                     selectedIcon: "ic_help_un")
        
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

