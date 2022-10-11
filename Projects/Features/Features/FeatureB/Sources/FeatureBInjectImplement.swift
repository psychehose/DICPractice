//
//  FeatureBInjectImplement.swift
//  FeatureB
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import FeatureDependencies
import Foundation
import UIKit

public class FeatureBInjectImplement: FeatureBInject {
  public init() { }
  public func viewController(title: String?) -> UIViewController {
    let vc = BViewController(title: title)
    return vc
  }


}
