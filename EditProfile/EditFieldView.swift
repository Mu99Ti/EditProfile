//
//  EditFieldView.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/24/23.
//

import UIKit

class EditFieldView: UIView {
    
    // MARK: - Private Properties
    private lazy var titleLabel = UILabel.makeForLabelView(textAlignment: .left, font: UIFont(name: "Outfit-SemiBold", size: 14), textColor: .black)
    private lazy var valueTextField = ValueTextField()
    private lazy var dateTextField = DateTextField()
    private lazy var mainStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 12, alignment: .leading, distribution: .fillProportionally)
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: - Add Subviews
        addSubview(mainStackView)
        mainStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(valueTextField)
        
        // MARK: - Setup Constraints
        let mainStackConstraints = [
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ]
        
        let valueTextFieldSizeConstraint = [
            valueTextField.heightAnchor.constraint(equalToConstant: 48),
            valueTextField.widthAnchor.constraint(equalToConstant: 335)
        ]
        
        NSLayoutConstraint.activate(mainStackConstraints)
        NSLayoutConstraint.activate(valueTextFieldSizeConstraint)
        
        // MARK: - Configure View
        backgroundColor = .systemBackground
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, textFieldPlaceHolder: String? = nil) {
        self.init(frame: .zero)
        
        titleLabel.text = title
        valueTextField.placeholder = textFieldPlaceHolder
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self {
            return false
        }
        return true
    }
}


