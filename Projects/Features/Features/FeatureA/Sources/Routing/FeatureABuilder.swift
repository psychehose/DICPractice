//
//  FeatureABuilder.swift
//  FeatureA
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//


import FeatureDependencies

class FeatureABuilder {
  func build() -> FeatureARouting? {
    guard let inject = Container.shared.load(
      for: featureBInjectID
    )?.resolve() as? FeatureBInject else {
      return nil
    }
    return FeatureARouter(featureBInject: inject)
  }
}
