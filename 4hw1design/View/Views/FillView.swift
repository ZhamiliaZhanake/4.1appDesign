//
//  FillView.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 12/2/24.
//

import UIKit
class FillView: UIView{
    private lazy var IdText: UILabel = {
        let view = UILabel()
        view.text = "Employee ID / email"
        view.textColor = .black
        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
     lazy var emailTF: UITextField = {
        let view = UITextField()
        view.placeholder = "zhanake@gmail.com"
        view.borderStyle = .bezel
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    private lazy var passwordText: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.textColor = .black

        view.font = .systemFont(ofSize: 12, weight: .regular)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var passwordTF: UITextField = {
        let view = UITextField()
        view.placeholder = "12345678"
        view.borderStyle = .bezel
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    private lazy var hideIconBtn: UIButton = {
       let view = UIButton()
        view.setImage(UIImage(named: "eyeIcon"), for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private lazy var forgotPasswdButton: UIButton = {
       let view = UIButton()
        view.setTitle("Forgot password?", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 12, weight: .regular)
        view.setTitleColor(.blue, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var checkButton: UIButton = {
       let view = UIButton()
        view.setImage(UIImage(named: "checkbox"), for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rememberText: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.textColor = .black
        view.font = .systemFont(ofSize: 16, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
     lazy var signInButton: UIButton = {
       let view = UIButton()
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .blue
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var stackview: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
       
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var dontHaveAccountLabel: UILabel = {
       let view = UILabel()
        view.text = "Don't have an Account?"
        view.textColor = .black
        view.font = .systemFont(ofSize: 14, weight: .medium)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signUpButton: UIButton = {
       let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
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
        addSubview(IdText)
        NSLayoutConstraint.activate([
            IdText.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            IdText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
        addSubview(emailTF)
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: IdText.bottomAnchor, constant: 5),
            emailTF.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTF.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTF.heightAnchor.constraint(equalToConstant: 30)
        ])
        addSubview(passwordText)
        NSLayoutConstraint.activate([
            passwordText.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 10),
            passwordText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
        addSubview(passwordTF)
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 5),
            passwordTF.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            passwordTF.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            passwordTF.heightAnchor.constraint(equalToConstant: 30)
        ])
        addSubview(hideIconBtn)
        NSLayoutConstraint.activate([
            hideIconBtn.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 5),
            hideIconBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            hideIconBtn.heightAnchor.constraint(equalToConstant: 25),
            hideIconBtn.widthAnchor.constraint(equalToConstant: 25)
        ])
        
        addSubview(forgotPasswdButton)
        NSLayoutConstraint.activate([
            forgotPasswdButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 3),
            forgotPasswdButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            forgotPasswdButton.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        addSubview(checkButton)
        NSLayoutConstraint.activate([
            checkButton.topAnchor.constraint(equalTo: forgotPasswdButton.bottomAnchor, constant: 5),
            checkButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            checkButton.heightAnchor.constraint(equalToConstant: 20),
            checkButton.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        addSubview(rememberText)
        NSLayoutConstraint.activate([
            rememberText.topAnchor.constraint(equalTo: forgotPasswdButton.bottomAnchor, constant: 5),
            rememberText.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 8)
        ])
        
        addSubview(signInButton)
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: rememberText.bottomAnchor, constant: 20),
            signInButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 168)
        ])
        addSubview(stackview)
        NSLayoutConstraint.activate([
            stackview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -70),
            stackview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackview.widthAnchor.constraint(equalToConstant: 320)
            
        ])
        stackview.addArrangedSubview(dontHaveAccountLabel)
        stackview.addArrangedSubview(signUpButton)
    }
    
}
