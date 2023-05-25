//
//  DateTextField.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/25/23.
//

import UIKit

class DateTextField: UITextField, UITextFieldDelegate {
    
    // MARK: - Private Properties
    private var padding: UIEdgeInsets = UIEdgeInsets(top: 13.5, left: 12, bottom: 13.5, right: 12)
    
    private let containerView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: 24))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var calendarImageView: UIImageView  = {
        let imageView = UIImageView(image: UIImage(named: "Calendar"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: - Add Subviews
        containerView.addSubview(calendarImageView)
        
        configure()
        textFieldShouldBeginEditing(self)
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
    private func configure() {
        layer.cornerRadius = 12
        font = UIFont(name: "Outfit-Regular", size: 14)
        backgroundColor = UIColor(red: 0.91, green: 0.91, blue: 0.91, alpha: 0.16)
        layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        layer.borderWidth = 1
        self.rightViewMode = .always
        self.rightView = containerView
        self.delegate = self
    }
    
    internal func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self {
            return false
        }
        return true
    }
}
