//
//  NavigationItemView.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/25/23.
//

import UIKit

class LeftNavigationItemView: UIView {
    
    private lazy var navigationItemBackButton: UIButton = {
        let button = UIButton()
        let buttonImage = UIImage(named: "BackButton")
        button.setImage(buttonImage, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var navigationItemPaddingView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var mainStackView = UIStackView.makeForStackView(axis: .horizontal, spacing: 0, alignment: .leading, distribution: .fillProportionally)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(navigationItemPaddingView)
        mainStackView.addArrangedSubview(navigationItemBackButton)
        
        let paddingViewSizeConstraints = [
            navigationItemPaddingView.heightAnchor.constraint(equalToConstant: 24),
            navigationItemPaddingView.widthAnchor.constraint(equalToConstant: 9)
        ]
        
        let buttonSizeConstraints = [
            navigationItemBackButton.heightAnchor.constraint(equalToConstant: 24),
            navigationItemBackButton.widthAnchor.constraint(equalToConstant: 24)
        ]
        
        let mainStackConstraints = [
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ]
        
        NSLayoutConstraint.activate(paddingViewSizeConstraints)
        NSLayoutConstraint.activate(buttonSizeConstraints)
        NSLayoutConstraint.activate(mainStackConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func buttonTapped() {}
}
