//
//  NextViewController.swift
//  Login
//
//  Created by Taxida on 05/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let button = UIButton()
    var username: String?
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Welcome all"
        
        let usernameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 21))
        usernameLabel.center = CGPoint(x: view.center.x, y: 100)
        usernameLabel.textAlignment = .center
        usernameLabel.adjustsFontSizeToFitWidth = true
        usernameLabel.minimumScaleFactor = 0.5
        usernameLabel.text = "Your Username is: \(username ?? "")"
        usernameLabel.tintColor = .white
        view.addSubview(usernameLabel)
        
        let passwordLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 21))
        passwordLabel.center = CGPoint(x: view.center.x, y: 140)
        passwordLabel.textAlignment = .center
        passwordLabel.adjustsFontSizeToFitWidth = true
        passwordLabel.minimumScaleFactor = 0.5
        passwordLabel.text = "Your Password is: \(password ?? "")"
        passwordLabel.tintColor = .white
        view.addSubview(passwordLabel)
        
        
        
        button.setTitle("next", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        button.center = CGPoint(x: view.center.x, y: 240)

        button.addTarget(self, action: #selector(didTapButton) , for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)

    }
    
    
    
}

