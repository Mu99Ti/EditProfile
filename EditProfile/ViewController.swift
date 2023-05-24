//
//  ViewController.swift
//  EditProfile
//
//  Created by Muhamad Talebi on 5/24/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var editDateOfBirthView = EditFieldView(title: "Date of Birth", textFieldPlaceHolder: "MM/DD/YY", calendar: true)
    private lazy var editCountryView = EditFieldView(title: "Country", textFieldPlaceHolder: "Example: United Kingdom")
    private lazy var editCityView = EditFieldView(title: "City", textFieldPlaceHolder: "Example: London")
    private lazy var editFieldsStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 16, alignment: .center, distribution: .fillProportionally)
    
    private lazy var vcBarButtonItem: UIBarButtonItem = {
        let image = UIImage(named: "BackButton")
        let button = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(backButton))
       return button
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.titleLabel?.font = UIFont(name: "Outfit-SemiBold", size: 16)
        button.backgroundColor = UIColor(red: 78/255, green: 182/255, blue: 194/255, alpha: 1)
        button.layer.cornerRadius = 25
        return button
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(UIColor(red: 78/255, green: 182/255, blue: 194/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Outfit-SemiBold", size: 16)
        button.backgroundColor = .white
        button.layer.cornerRadius = 25
        button.layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    private lazy var buttonsStackView = UIStackView.makeForStackView(axis: .horizontal, spacing: 11, alignment: .center, distribution: .fillProportionally)
    
    private lazy var mainStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 329, alignment: .center, distribution: .fillProportionally)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // MARK: - Add Subviews
        view.addSubview(mainStackView)
        view.addSubview(editFieldsStackView)
        view.addSubview(buttonsStackView)

        mainStackView.addArrangedSubview(editFieldsStackView)
        mainStackView.addArrangedSubview(buttonsStackView)

        editFieldsStackView.addArrangedSubview(editDateOfBirthView)
        editFieldsStackView.addArrangedSubview(editCountryView)
        editFieldsStackView.addArrangedSubview(editCityView)
        
        buttonsStackView.addArrangedSubview(cancelButton)
        buttonsStackView.addArrangedSubview(saveButton)
        
        // MARK: - Setup Constraints
        let mainStackViewConstraints = [
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ]
        
        let buttonsStackViewSizeCosntraints = [
            buttonsStackView.heightAnchor.constraint(equalToConstant: 48),
            buttonsStackView.heightAnchor.constraint(equalToConstant: 334)
        ]
        
        let cancelButtonSizeConstraints = [
            cancelButton.heightAnchor.constraint(equalToConstant: 48),
            cancelButton.widthAnchor.constraint(equalToConstant: 161.5)
        ]
        
        let saveButtonSizeConstraints = [
            saveButton.heightAnchor.constraint(equalToConstant: 48),
            saveButton.widthAnchor.constraint(equalToConstant: 161.5)
        ]
        
        NSLayoutConstraint.activate(mainStackViewConstraints)
        NSLayoutConstraint.activate(cancelButtonSizeConstraints)
        NSLayoutConstraint.activate(saveButtonSizeConstraints)
        
        
        
        view.backgroundColor = .systemBackground
        navigationItem.leftBarButtonItem = vcBarButtonItem
    }
    
    @objc func backButton() {}
    
}

