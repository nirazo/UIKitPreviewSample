//
//  ViewController.swift
//  UIRepresentableSample
//
//  Created by Kenzo on 7/23/20.
//  Copyright © 2020 scoooop. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mainView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

