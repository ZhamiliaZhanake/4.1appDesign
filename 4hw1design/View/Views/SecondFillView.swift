//
//  SecondFillView.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 15/2/24.
//

import UIKit
class SecondFillView: UIView {
    private var stackView = MakerView().makerStack()
    private let nameLabel = MakerView().makerLabel(text: "Full name")
     let nameTF = MakerView().makerTextField(placeholder: "Zhamilia")
    private let numberLabel = MakerView().makerLabel(text: "Mobile Number")
     let numberTF = MakerView().makerTextField(placeholder: "+996123123")
    private let emailLabel = MakerView().makerLabel(text: "Email")
     let emailTF = MakerView().makerTextField(placeholder: "@zhanake")
    private let userLabel = MakerView().makerLabel(text: "User Name")
     let userTF = MakerView().makerTextField(placeholder: "zhanake@123")
    private let passwordLabel = MakerView().makerLabel(text: "Password")
     let passwordTF = MakerView().makerTextField(placeholder: "123456")
    private let confirmPasswordLabel = MakerView().makerLabel(text: "Confirm Password")
     let confirmPasswordTF = MakerView().makerTextField(placeholder: "123456")
    lazy var signUpButton = MakerView().makerButton(title: "Sign Up")
    private var stack = MakerView().makerStack(axis: .horizontal)
    
    private let alreadyHaveAnAccountLabel = MakerView().makerLabel(text: "Already have an account?", size: 14, weight: .bold)
    
     lazy var signInButton: UIButton = {
       let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 300)
        ])
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(nameTF)
        stackView.addArrangedSubview(numberLabel)
        stackView.addArrangedSubview(numberTF)
        stackView.addArrangedSubview(emailLabel)
        stackView.addArrangedSubview(emailTF)
        stackView.addArrangedSubview(userLabel)
        stackView.addArrangedSubview(userTF)
        stackView.addArrangedSubview(passwordLabel)
        stackView.addArrangedSubview(passwordTF)
        stackView.addArrangedSubview(confirmPasswordLabel)
        stackView.addArrangedSubview(confirmPasswordTF)
        
        addSubview(signUpButton)
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 15),
            signUpButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 168),
            signUpButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        let hideIconBtn = FillView().hideIconBtn
        addSubview(hideIconBtn)
        NSLayoutConstraint.activate([
            hideIconBtn.centerYAnchor.constraint(equalTo: passwordTF.centerYAnchor),
            hideIconBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            hideIconBtn.heightAnchor.constraint(equalToConstant: 25),
            hideIconBtn.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        let hideIconButton = FillView().hideIconBtn
        addSubview(hideIconButton)
        NSLayoutConstraint.activate([
            hideIconButton.centerYAnchor.constraint(equalTo: confirmPasswordTF.centerYAnchor),
            hideIconButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            hideIconButton.heightAnchor.constraint(equalToConstant: 25),
            hideIconButton.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        addSubview(stack)
        NSLayoutConstraint.activate([
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stack.widthAnchor.constraint(equalToConstant: 360)
            
        ])
        stack.addArrangedSubview(alreadyHaveAnAccountLabel)
        stack.addArrangedSubview(signInButton)
    }
}
