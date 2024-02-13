//
//  SuccessViewController.swift
//  4hw1design
//
//  Created by Zhamilia Zhanakeeva on 12/2/24.
//

import UIKit

class SuccessViewController: UIViewController {
    private lazy var sucessImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "verificationBadge")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var successLabel: UILabel = {
        let view = UILabel()
        view.text = "Success!"
        view.textColor = .white
        view.font = .systemFont(ofSize: 26, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemTeal
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(sucessImage)
        NSLayoutConstraint.activate(
            [sucessImage.widthAnchor.constraint(equalToConstant: 180),
             sucessImage.heightAnchor.constraint(equalToConstant: 180),
             sucessImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             sucessImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        
        view.addSubview(successLabel)
        NSLayoutConstraint.activate([
            successLabel.topAnchor.constraint(equalTo: sucessImage.bottomAnchor, constant: 20),
            successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
}
