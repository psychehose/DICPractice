//
//  FeatureAInjectImplement.swift
//  FeatureA
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import UIKit
import FeatureDependencies

public class FeatureAInjectImplement: FeatureAInject {
  public func viewController() -> UIViewController {
    let vc = AViewController()

    return vc
  }
}
