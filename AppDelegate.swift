//
//  AppDelegate.swift
//  Login
//
//  Created by Taxida on 05/02/24.
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        print("didFinishLaunchingWithOptions")
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }
    
    
    
    
}

