//
//  AppDelegate.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/24/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.title = "Edit Profile"
        viewController.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Outfit-SemiBold", size: 16) as Any]
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = navigationController
        return true
    }
}

