//
//  thirdFillView.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 15/2/24.
//

import UIKit
class ThirdFillView: UIView {
    private var stackView = MakerView().makerStack()
    private let grayTF = MakerView().makerTextField(backgroundColor: .darkGray)
    private let newPasswordLabel = MakerView().makerLabel(text: "New Password")
    let newPasswordTF = MakerView().makerTextField(placeholder: "123456")
    private let confirmPasswordLabel = MakerView().makerLabel(text: "Confirm Password")
    let confirmPasswordTF = MakerView().makerTextField(placeholder: "123456")
    lazy var submitButton = MakerView().makerButton(title: "Submit", backgroundColor: .systemGreen)
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .white
        setupUI()
    }
    private func setupUI() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 200)
        ])
        stackView.addArrangedSubview(newPasswordLabel)
        stackView.addArrangedSubview(newPasswordTF)
        stackView.addArrangedSubview(confirmPasswordLabel)
        stackView.addArrangedSubview(confirmPasswordTF)
        
        addSubview(submitButton)
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 50),
            submitButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            submitButton.widthAnchor.constraint(equalToConstant: 168),
            submitButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        let hideIconBtn = FillView().hideIconBtn
        addSubview(hideIconBtn)
        NSLayoutConstraint.activate([
            hideIconBtn.centerYAnchor.constraint(equalTo: newPasswordTF.centerYAnchor),
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
    }
}
