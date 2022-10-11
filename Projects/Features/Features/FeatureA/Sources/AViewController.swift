//
//  AViewController.swift
//  FeatureA
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import FeatureDependencies
import Foundation
import UIKit


public final class AViewController: UIViewController {
  private let featureABuilder: FeatureABuilder = FeatureABuilder()

  private lazy var button: UIButton = {
    let button = UIButton()
    button.setTitle("AViewController", for: .normal)
    button.titleLabel?.font = .boldSystemFont(ofSize: 15)
    button.setTitleColor(UIColor.black, for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    button.layer.cornerRadius = 8
    button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    return button
  }()

  public init() {
    super.init(nibName: nil, bundle: nil)
    view.backgroundColor = .white
    setupViews()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc
  private func didTapButton() {
    let router = featureABuilder.build()
    guard let BVC = router?.routeToBFeatureViewController(title: "어쩔티비") else { return }
    self.navigationController?.pushViewController(BVC, animated: true)
  }

  private func setupViews() {
    view.addSubview(button)

    NSLayoutConstraint.activate([
      button.widthAnchor.constraint(equalToConstant: 150),
      button.heightAnchor.constraint(equalToConstant: 40),
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }

}
