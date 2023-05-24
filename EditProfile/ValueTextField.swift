//
//  ValueTextField.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/24/23.
//

import UIKit

class ValueTextField: UITextField {
    
    // MARK: - Private Properties
    private let calendarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Calendar"))
        imageView.contentMode = .center
        imageView.isHidden = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
        
    // MARK: - Public Properties
    public var padding: UIEdgeInsets = UIEdgeInsets(top: 13.5, left: 12, bottom: 13.5, right: 12)
    public var isCalendarShown: Bool = false
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(calendarImageView)
        
        let calendarImageConstraints = [
            calendarImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            calendarImageView.heightAnchor.constraint(equalToConstant: 24.01),
            calendarImageView.widthAnchor.constraint(equalToConstant: 24.01)
        ]
        
        NSLayoutConstraint.activate(calendarImageConstraints)
        
        configure(isCalendarShown: isCalendarShown)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Overriden Methods
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // MARK: - Private Methods
    private func configure(isCalendarShown: Bool) {
        layer.cornerRadius = 12
        font = UIFont(name: "Outfit-Regular", size: 14)
        backgroundColor = UIColor(red: 0.91, green: 0.91, blue: 0.91, alpha: 0.16)
        layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        layer.borderWidth = 1
        if isCalendarShown {
            calendarImageView.isHidden = false
        }
    }
}
