//
//  FeatureAInjectItem.swift
//  DICPractice
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import Foundation
import FeatureDependencies
import FeatureA

final class FeatureAInjectItem: Injectable {
  init() { }
  var id: String = featureAInjectID
  func resolve() -> AnyObject {
    FeatureAInjectImplement()
  }
}
