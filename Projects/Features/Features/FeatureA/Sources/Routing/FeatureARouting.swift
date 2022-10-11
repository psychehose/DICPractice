//
//  FeatureARouting.swift
//  FeatureA
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import FeatureDependencies
import Foundation
import UIKit

protocol FeatureARouting {
  var featureBInject: FeatureBInject { get }
  func routeToBFeatureViewController(title: String?) -> UIViewController
}

class FeatureARouter: FeatureARouting {

  init(
    featureBInject: FeatureBInject
  ) {
      self.featureBInject = featureBInject
    }

  let featureBInject: FeatureBInject

  func routeToBFeatureViewController(title: String?) -> UIViewController {
    return featureBInject.viewController(title: title)
  }
}
