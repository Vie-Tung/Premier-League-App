//
//  AppCoordinator.swift
//  fustball
//
//  Created by Tung Viet on 3/2/25.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    private var window: UIWindow
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let home = HomeCoordinator()
        self.start(coordinator: home)
        
        window.rootViewController = home.navigationController
        window.makeKeyAndVisible()
    }
}
