//
//  LabelsView.swift
//  UIRepresentableSample
//
//  Created by Kenzo on 7/23/20.
//  Copyright © 2020 scoooop. All rights reserved.
//

import UIKit
import SwiftUI

struct LabelsViewStruct: UIViewRepresentable {
    func makeUIView(context: Context) -> LabelsView {
        return LabelsView()
    }
    
    func updateUIView(_ uiView: LabelsView, context: Context) {
        //
    }
}


class LabelsView: UIView {

    private let label1: UILabel = {
       let label = UILabel()
        label.text = "LabelsView1"
        label.textColor = .green
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    private let label2: UILabel = {
       let label = UILabel()
        label.text = "LabelsView2"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    private let label3: UILabel = {
       let label = UILabel()
        label.text = "LabelsView3"
        label.textColor = .systemIndigo
        label.font = .systemFont(ofSize: 10)
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
            make.top.left.equalToSuperview().inset(8)
            make.height.equalTo(50)
            make.width.equalTo(110)
        }
        
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1)
            make.left.equalTo(label1.snp.right).offset(8)
            make.height.equalTo(50)
            make.width.equalTo(110)
        }
        
        label3.snp.makeConstraints { make in
            make.top.equalTo(label1)
            make.left.equalTo(label2.snp.right).offset(8)
            make.height.equalTo(50)
            make.width.equalTo(110)
        }
    }

}

struct LabelsViewPreview: PreviewProvider {
    static var previews: some View {
        LabelsViewStruct()
    }
}
