//
//  AppDelegate.swift
//  NetworkLayer
//
//  Created by KIM HOSE on 2022/06/30.
//  Copyright © 2022 com.devhose. All rights reserved.
//


import UIKit

import FeatureA
import FeatureDependencies

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {

    Container.shared.regist(injectType: FeatureAInjectItem.self)
    Container.shared.regist(injectType: FeatureBInjectItem.self)

    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = .white
    window.rootViewController = UINavigationController(rootViewController: AViewController())
    window.makeKeyAndVisible()
    self.window = window

    return true
  }
}
