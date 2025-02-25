//
//  AppDelegate.swift
//  fustball
//
//  Created by Tung Viet on 3/2/25.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = AppCoordinator(window!)
        appCoordinator.start()
        return true
    }
}
