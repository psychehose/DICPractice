//
//  FeatureBRouting.swift
//  FeatureB
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import FeatureDependencies
import Foundation
import UIKit

protocol FeatureBRouting {
  var featureAInject: FeatureAInject { get }
  func routeToAFeatureViewController() -> UIViewController
}

class FeatureBRouter: FeatureBRouting {

  init(
    featureAInject: FeatureAInject
  ) {
      self.featureAInject = featureAInject
    }

  let featureAInject: FeatureAInject

  func routeToAFeatureViewController() -> UIViewController {
    return featureAInject.viewController()
  }
}
