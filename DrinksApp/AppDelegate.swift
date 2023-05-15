//
//  AppDelegate.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 13.3.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        MainContext.createRootView(isUserLoggedIn: true)
        return true
    }

}

