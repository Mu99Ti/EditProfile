//
//  CalendarTextFieldInputView.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/25/23.
//

import UIKit

class CalendarInputView: UITextField {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.font = UIFont(name: "Outfit-SemiBold", size: 14)
        return label
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.backgroundColor = UIColor(red: 0.91, green: 0.91, blue: 0.91, alpha: 0.16)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        return view
    }()
    
    private lazy var calendarButton: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Calendar"))
        imageView.contentMode = .center
        imageView.isHidden = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var calendarTextView: UITextView = {
        let textView = UITextView()
        textView.text = "MM/DD/YY"
        textView.font = UIFont(name: "Outfit-Regular", size: 14)
        textView.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        textView.backgroundColor = .clear
        return textView
    }()
    
    private let fieldStackView = UIStackView.makeForStackView(axis: .horizontal, spacing: 0, alignment: .center, distribution: .fillProportionally)
    private lazy var mainStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 0, alignment: .leading, distribution: .fillProportionally)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainStackView)
        
        containerView.addSubview(fieldStackView)
        
        fieldStackView.addArrangedSubview(calendarTextView)
        fieldStackView.addArrangedSubview(calendarButton)
        
        mainStackView.addArrangedSubview(titleLabel)
        mainStackView.addArrangedSubview(containerView)
        
        let containerViewConstraints = [
            containerView.heightAnchor.constraint(equalToConstant: 48),
            containerView.widthAnchor.constraint(equalToConstant: 335)
        ]
        
        let calendarButtonConstraints = [
            calendarButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12),
            calendarButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12),
            calendarButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12),
            calendarButton.leadingAnchor.constraint(equalTo: calendarTextView.trailingAnchor, constant: 11),
            calendarButton.heightAnchor.constraint(equalToConstant: 24.01),
            calendarButton.widthAnchor.constraint(equalToConstant: 24.01)
        ]
        
        let calendarTextView = [
            calendarTextView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13.5),
            calendarTextView.trailingAnchor.constraint(equalTo: calendarButton.leadingAnchor, constant: -11),
            calendarTextView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -13.5),
            calendarTextView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            calendarTextView.heightAnchor.constraint(equalToConstant: 21),
            calendarTextView.widthAnchor.constraint(equalToConstant: 279),
        ]
//
//        let fieldStackViewConstraints = [
//            fieldStackView.topAnchor.constraint(equalTo: containerView.topAnchor),
//            fieldStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -12),
//            fieldStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
//            fieldStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
//            fieldStackView.heightAnchor.constraint(equalToConstant: containerView.frame.height),
//            fieldStackView.widthAnchor.constraint(equalToConstant: containerView.frame.width),
//        ]
        
        let mainStackViewConstaints = [
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ]
        
        NSLayoutConstraint.activate(containerViewConstraints)
        NSLayoutConstraint.activate(calendarButtonConstraints)
        NSLayoutConstraint.activate(calendarTextView)
//        NSLayoutConstraint.activate(fieldStackViewConstraints)
        NSLayoutConstraint.activate(mainStackViewConstaints)
        
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
