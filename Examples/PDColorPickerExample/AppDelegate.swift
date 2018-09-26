//
//  AppDelegate.swift
//  PDColorPicker
//
//  Created by Paolo Di Lorenzo on 8/8/2017.
//  Copyright © 2017 Paolo Di Lorenzo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()

    return true
  }

}
