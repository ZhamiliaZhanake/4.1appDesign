//
//  NewPasswordController.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 15/2/24.
//

import UIKit
class NewPasswordController: UIViewController {
    private let lockImage = MakerView().makerImageView(image: UIImage(named: "lock"))
    private let grayTF = MakerView().makerTextField (cornerRadius: 8, placeholder: "erp001", backgroundColor: .darkGray)
    private var thirdFillView: ThirdFillView = {
        let view = ThirdFillView()
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.layer.cornerRadius = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemTeal
        let submitButton = thirdFillView.submitButton
        submitButton.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
        setupUI()
    }
    
    @objc func submitButtonTapped () {
        guard let newPasswordTF = thirdFillView.newPasswordTF.text, !newPasswordTF.isEmpty,
              let confirmPasswordTF = thirdFillView.confirmPasswordTF.text, !confirmPasswordTF.isEmpty else {
            showErrorForEmptyFields()
                  return
              }
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func showErrorForEmptyFields() {
        if thirdFillView.newPasswordTF.text?.isEmpty ?? true {
            showError(for: thirdFillView.newPasswordTF)
        }
        if thirdFillView.confirmPasswordTF.text?.isEmpty ?? true {
            showError(for: thirdFillView.confirmPasswordTF)
        }
    }
    
    private func showError(for textField: UITextField) {
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1
        textField.attributedPlaceholder = NSAttributedString(string: "Заполните пожалуйста", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
    }
    
    private func setupUI() {
        view.addSubview(lockImage)
        NSLayoutConstraint.activate([
            lockImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            lockImage.heightAnchor.constraint(equalToConstant: 100),
            lockImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lockImage.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        view.addSubview(grayTF)
        NSLayoutConstraint.activate([
            grayTF.topAnchor.constraint(equalTo: lockImage.bottomAnchor, constant: 25),
            grayTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            grayTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            grayTF.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        view.addSubview(thirdFillView)
        NSLayoutConstraint.activate([
            thirdFillView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            thirdFillView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            thirdFillView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            thirdFillView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
