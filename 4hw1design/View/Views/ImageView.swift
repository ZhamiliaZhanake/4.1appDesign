//
//  ImageView.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 12/2/24.
//


import UIKit
class ImageView: UIView {
    private lazy var image: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "kid")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var welcomeTitle: UILabel = {
        let view = UILabel()
        view.text = "Welcome Back"
        view.textColor = .white
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var signTitle: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.font = .systemFont(ofSize: 17, weight: .regular)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
                setupUI()
    }
    
    private func setupUI() {
        addSubview(image)
        NSLayoutConstraint.activate(
            [image.widthAnchor.constraint(equalToConstant: 180),
             image.heightAnchor.constraint(equalToConstant: 180),
             image.topAnchor.constraint(equalTo: topAnchor),
             image.centerXAnchor.constraint(equalTo: centerXAnchor)
    ])
        
        addSubview(welcomeTitle)
        NSLayoutConstraint.activate([
            welcomeTitle.topAnchor.constraint(equalTo: image.bottomAnchor),
            welcomeTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        addSubview(signTitle)
        NSLayoutConstraint.activate([
            signTitle.topAnchor.constraint(equalTo: welcomeTitle.bottomAnchor, constant: 3),
            signTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
}
