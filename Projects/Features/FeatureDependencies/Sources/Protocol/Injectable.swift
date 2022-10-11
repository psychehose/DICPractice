//
//  Injectable.swift
//  FeatureDependencies
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import Foundation

public protocol Injectable {
  init()
  var id: String { get }
  func resolve() -> AnyObject
}
