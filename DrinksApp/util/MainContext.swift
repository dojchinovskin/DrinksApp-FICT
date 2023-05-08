//
//  MainContext.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 24.4.23.
//

import UIKit

class MainContext {
    
    static func createRootView(isUserLoggedIn: Bool) {
        var rootViewController: UIViewController?
        
        rootViewController = isUserLoggedIn
                ? UIStoryboard(name: "Main", bundle: .main).instantiateInitialViewController()
                : UIStoryboard(name: "Login", bundle: .main).instantiateInitialViewController()
        
        if let window = UIApplication
                            .shared
                            .connectedScenes
                            .map({ $0 as? UIWindowScene })
                            .compactMap({ $0 })
                            .first?
                            .windows
                            .first {
            window.rootViewController = rootViewController
        }
    }
    
}


