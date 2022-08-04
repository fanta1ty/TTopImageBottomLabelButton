//
//  ViewController+ContentView.swift
//  TTopImageBottomLabelButton_Example
//
//  Created by Nguyen, Thinh on 04/08/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import TTopImageBottomLabelButton

extension ViewController {
    final class ContentView: UIView {
        private lazy var stackView = UIStackView(arrangedSubviews: [
            UIView(),
            demoButton,
            UIView()
        ])
        
        let demoButton = TTopImageBottomLabelButton(title: "Bottom", image: UIImage(named: "Image")!)
        
        init() {
            super.init(frame: .zero)
            addSubviews()
            setupSubviews()
            setupLayout()
        }
        
        @available(*, unavailable)
        required init?(coder: NSCoder) { nil }
    }
}

extension ViewController.ContentView {
    private func addSubviews() {
        addSubview(stackView)
    }
    
    private func setupSubviews() {
        backgroundColor = .white
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 24
        stackView.isLayoutMarginsRelativeArrangement = true
        
        demoButton.translatesAutoresizingMaskIntoConstraints = false
        demoButton.backgroundColor = .purple
        demoButton.layer.cornerRadius = 4
        demoButton.layer.masksToBounds = true
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 130)
        ])
    }
}
