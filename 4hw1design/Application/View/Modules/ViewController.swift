//
//  ViewController.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 12/2/24.
//

import UIKit

class ViewController: UIViewController {
    private var imageView: ImageView = {
        let view = ImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var fillView: FillView = {
        let view = FillView()
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let signInButton = fillView.signInButton
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        setupUI()
        view.backgroundColor = UIColor.systemTeal
        
    }
    
    private func setupUI() {
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 240)
        ])
        view.addSubview(fillView)
        NSLayoutConstraint.activate([
            fillView.topAnchor.constraint(equalTo: imageView.bottomAnchor),
            fillView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fillView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            fillView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    @objc func signInButtonTapped() {
        guard let email = fillView.emailTF.text, !email.isEmpty,
              let password = fillView.passwordTF.text, !password.isEmpty else {
            showErrorForEmptyFields()
            return
        }
        navigateToSuccessViewController()
        
    }
    func showErrorForEmptyFields() {
        if fillView.emailTF.text?.isEmpty ?? true {
            showError(for: fillView.emailTF)
        }
        
        if fillView.passwordTF.text?.isEmpty ?? true {
            showError(for: fillView.passwordTF)
        }
        
    }
    
    func showError(for textField: UITextField) {
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1.0
        textField.attributedPlaceholder = NSAttributedString(
            string: "Заполните пожалуйста",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
        )
    }
    
    func navigateToSuccessViewController() {
        let vc = SuccessViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}



