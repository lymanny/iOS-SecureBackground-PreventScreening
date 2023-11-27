//
//  AppDelegate.swift
//  UICollectionView-2022-11-01
//
//  Created by Ly Manny on 1/11/22.
//

import UIKit
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
    configIQKeyboard: do {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside     = true
        IQKeyboardManager.shared.toolbarDoneBarButtonItemText   = "Done"
        IQKeyboardManager.shared.previousNextDisplayMode        = .alwaysShow
    }
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        NotificationCenter.default.post(Notification(name: Notification.Name("REMOVE_BLUR"), object: nil))
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        NotificationCenter.default.post(Notification(name: Notification.Name("SHOW_BLUR"), object: nil))
    }

}

