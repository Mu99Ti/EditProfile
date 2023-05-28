//
//  DateTextField.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/25/23.
//

import UIKit

class DateTextField: UITextField, UITextFieldDelegate {
    
    // MARK: - Private Properties
    private lazy var padding: UIEdgeInsets = UIEdgeInsets(top: 13.5, left: 12, bottom: 13.5, right: 12)
    private lazy var doneToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 0, height: 45))
    
    private lazy var calendarDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter
    }()
    
    private lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        return datePicker
    }()
    
    private lazy var doneToolbarButton: UIBarButtonItem = {
        let barButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))
        barButton.title = "Done"
        barButton.style = .done
        return barButton
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: 24))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var calendarImageView: UIImageView  = {
        let imageView = UIImageView(image: UIImage(named: "Calendar"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        return datePicker
    }()
    
    private lazy var doneToolbar: UIToolbar = {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        return toolbar
    }()
    
    private lazy var doneButton: UIBarButtonItem = {
        let button = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(datePickerDoneButtonTapped))
        return button
    }()
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: - Add Subviews
        containerView.addSubview(calendarImageView)
        
        inputView = datePicker
        
        configure()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Overriden Methods
    override open func textR``olderRect(forBounds bounds: CGRect) -> CGRect {
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
        rightViewMode = .always
        rightView = containerView
        delegate = self
//        textFieldShouldBeginEditing(self)
    }
    
    @objc  private func datePickerDoneButtonTapped() {
           self.endEditing(true)
       }
    
    internal func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        if textField == self {
//            return false
//        }
//        return true
        self.inputView = datePicker
        doneToolbar.sizeToFit()
        doneToolbar.setItems([doneButton], animated: false)
        self.inputAccessoryView = doneToolbar
        return true
    }
    
//    internal func textFieldDidBeginEditing(_ textField: UITextField) {
//        self.inputView = datePicker
//        doneToolbar.sizeToFit()
//        doneToolbar.setItems([doneButton], animated: false)
//        self.inputAccessoryView = doneToolbar
//    }
}
