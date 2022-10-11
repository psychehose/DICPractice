//
//  FeatureBBuilder.swift
//  FeatureB
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import Foundation
import FeatureDependencies

class FeatureBBuilder {
  func build() -> FeatureBRouting? {
    guard let inject = Container.shared.load(
      for: featureAInjectID
    )?.resolve() as? FeatureAInject else {
      return nil
    }
    return FeatureBRouter(featureAInject: inject)
  }
}
