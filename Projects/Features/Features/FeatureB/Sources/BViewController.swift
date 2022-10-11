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

  private let label: UILabel = {
    let label = UILabel()
    label.text = "BViewController"
    label.layer.borderWidth = 2
    label.layer.borderColor = UIColor.black.cgColor
    label.font = .boldSystemFont(ofSize: 15)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  public init() {
    super.init(nibName: nil, bundle: nil)
    setupViews()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  private func setupViews() {
    view.addSubview(label)

    NSLayoutConstraint.activate([
      label.widthAnchor.constraint(equalToConstant: 90),
      label.heightAnchor.constraint(equalToConstant: 40),
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
    ])
  }

}
