//
//  ViewController.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 21.03.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: UIImage(named: "Logo"), contentMode: .scaleAspectFit)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up with")
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google",
                            backgroundColor: .white,
                            titleColor: .black,
                            isShadow: true)
    
    let emailButton = UIButton(title: "Email",
                            backgroundColor: .buttonDark(),
                            titleColor: .white)
    
    let loginButton = UIButton(title: "Login",
                            backgroundColor: .white,
                            titleColor: .buttonRed(),
                            isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        googleButton.customizedGoogleButton()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupConstraints()
    }

}

// MARK: - setup layout

extension AuthViewController {
    private func setupConstraints() {
        
        
        let googleView = ButtonFofmView(label: googleLabel, button: googleButton)
        let emailView = ButtonFofmView(label: emailLabel, button: emailButton)
        let loginView = ButtonFofmView(label: alreadyOnboardLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView,emailView,loginView],
                                    axis: .vertical,
                                    spacing: 40)
        
        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
       
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
       
    }

}


