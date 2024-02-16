//
//  SignUpViewController.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 15/2/24.
//

import UIKit
class SignUpViewController: UIViewController {
    private lazy var imageView = MakerView().makerImageView(image: UIImage(named: "kid"))
    private var secondFillView: SecondFillView = {
        let view = SecondFillView()
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemTeal
        setupUI()
        let signUpButton = secondFillView.signUpButton
        signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        let signInButton = secondFillView.signInButton
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
    }
    
    @objc func signUpButtonTapped() {
        guard let name = secondFillView.nameTF.text, !name.isEmpty,
              let number = secondFillView.numberTF.text, !number.isEmpty,
              let email = secondFillView.emailTF.text, !email.isEmpty,
              let user = secondFillView.userTF.text, !user.isEmpty,
              let password = secondFillView.passwordTF.text, !password.isEmpty,
              let confirmPassword = secondFillView.confirmPasswordTF.text, !confirmPassword.isEmpty
        else {
            showErrorForEmptyFields()
            return
        }
        navigateToSuccessViewController()
    }
    
    private func showErrorForEmptyFields() {
        if secondFillView.nameTF.text?.isEmpty ?? true {
            showError(for: secondFillView.nameTF)
        }
        if secondFillView.numberTF.text?.isEmpty ?? true {
            showError(for: secondFillView.numberTF)
        }
        if secondFillView.emailTF.text?.isEmpty ?? true {
            showError(for: secondFillView.emailTF)
        }
        if secondFillView.userTF.text?.isEmpty ?? true {
            showError(for: secondFillView.userTF)
        }
        if secondFillView.passwordTF.text?.isEmpty ?? true {
            showError(for: secondFillView.passwordTF)
        }
        if secondFillView.confirmPasswordTF.text?.isEmpty ?? true {
            showError(for: secondFillView.confirmPasswordTF)
        }
    }
    
     func showError(for textField: UITextField) {
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1.0
        textField.attributedPlaceholder = NSAttributedString(
            string: "Заполните, пожалуйста",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
        )
    }
    
    func navigateToSuccessViewController() {
        let vc = SuccessViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func signInButtonTapped () {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setupUI() {
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 240)
        ])
        
        view.addSubview(secondFillView)
        NSLayoutConstraint.activate([
            secondFillView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 140),
            secondFillView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondFillView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondFillView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
