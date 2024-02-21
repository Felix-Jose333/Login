//
//  ViewController.swift
//  Login
//
//  Created by Taxida on 05/02/24.
//

import UIKit

class ViewController: UIViewController {

    let usernameTextField = UITextField()
    let passwordTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        let loginButton = UIButton(type: .system)
        loginButton.frame = CGRect(x: 0, y: 0, width: 250, height: 40)
        loginButton.center = CGPoint(x: view.center.x, y: 320)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.tintColor = .white
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        view.addSubview(loginButton)
        
        
        let usernameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 21))
        usernameLabel.center = CGPoint(x: view.center.x, y: 100)
        usernameLabel.textAlignment = .left
        usernameLabel.text = "Username"
        view.addSubview(usernameLabel)

        let passwordLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 21))
        passwordLabel.center = CGPoint(x: view.center.x, y: 180)
        passwordLabel.textAlignment = .left
        passwordLabel.text = "Password"
        view.addSubview(passwordLabel)

        usernameTextField.frame = CGRect(x: 0, y: 0, width: 250, height: 30)
        usernameTextField.center = CGPoint(x: view.center.x, y: 140)
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.placeholder = "Enter username"
        view.addSubview(usernameTextField)

        passwordTextField.frame = CGRect(x: 100, y: 100, width: 250, height: 30)
        passwordTextField.center = CGPoint(x: view.center.x, y: 220)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.placeholder = "Enter password"
        view.addSubview(passwordTextField)
    }

    
    @objc func loginButtonTapped() {

        guard let username = usernameTextField.text, let password = passwordTextField.text else {
            return
        }

        let secondVC = SecondViewController()
        secondVC.username = username
        secondVC.password = password

        // Present the second view controller
        let navVC = UINavigationController(rootViewController: secondVC)
        
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)

    }
    

}


