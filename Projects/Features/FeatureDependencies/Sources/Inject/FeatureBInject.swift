//
//  FeatureBInject.swift
//  FeatureDependencies
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import Foundation
import UIKit

public let featureBInjectID = "FeatureBInjectID"

public protocol FeatureBInject {
  func viewController(title: String?) -> UIViewController
}

