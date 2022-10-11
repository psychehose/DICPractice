//
//  BViewController.swift
//  FeatureB
//
//  Created by 김호세 on 2022/10/12.
//  Copyright © 2022 com.devhose. All rights reserved.
//

import Foundation
import UIKit

public final class BViewController: UIViewController {

  private let button: UIButton = {
    let button = UIButton()
    button.setTitle("BViewController", for: .normal)
    button.titleLabel?.font = .boldSystemFont(ofSize: 15)
    button.setTitleColor(UIColor.black, for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.black.cgColor
    button.layer.cornerRadius = 8
    return button
  }()


  public init() {
    super.init(nibName: nil, bundle: nil)
    setupViews()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  private func setupViews() {
    view.addSubview(button)

    NSLayoutConstraint.activate([
      button.widthAnchor.constraint(equalToConstant: 120),
      button.heightAnchor.constraint(equalToConstant: 40),
      button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }

}
