//
//  MainView.swift
//  UIRepresentableSample
//
//  Created by Kenzo on 7/23/20.
//  Copyright © 2020 scoooop. All rights reserved.
//

import UIKit
import SnapKit
import SwiftUI

struct MainViewStruct: UIViewRepresentable {
    func makeUIView(context: Context) -> MainView {
        return MainView()
    }
    
    func updateUIView(_ uiView: MainView, context: Context) {
        //
    }
}

class MainView: UIView {

    private let label1: UILabel = {
       let label = UILabel()
        label.text = "Label1"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let label2: UILabel = {
       let label = UILabel()
        label.text = "Label2"
        label.textColor = .red
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private let label3: UILabel = {
       let label = UILabel()
        label.text = "Label3"
        label.textColor = .blue
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addSubview(label1)
        addSubview(label2)
        addSubview(label3)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        label1.snp.makeConstraints { make in
            make.top.left.equalToSuperview().inset(50)
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
        
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(50)
            make.left.equalTo(label1)
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
        
        label3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(100)
            make.left.equalTo(label2).offset(30)
            make.height.equalTo(50)
            make.width.equalTo(100)
        }
    }
}

struct MainViewPreview: PreviewProvider {
    static var previews: some View {
        MainViewStruct()
    }
}
