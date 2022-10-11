//
//  Container.swift
//  FeatureDependencies
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

public protocol ContainerAPI {
  func regist(injectType: Injectable.Type)
  func load(for injectId: String) -> Injectable?
}

public class Container: ContainerAPI {
  private var injections: [String: Injectable] = [:]
  public static let shared: Container = Container()

  public func regist(injectType: Injectable.Type) {
    let injection = injectType.init()
    injections[injection.id] = injection
  }

  public func load(for injectId: String) -> Injectable? {
    return injections[injectId]
  }
}
