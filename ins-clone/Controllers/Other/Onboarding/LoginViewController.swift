//
//  LoginViewController.swift
//  ins-clone
//
//  Created by Jinyun Wang on 11/25/20.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    private let usernameEmailField: UITextField = {
        return UITextField()
    }()
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton: UIButton = {
        return UIButton()
    }()
    
    private let termsButton: UIButton = {
        return UIButton()
    }()
    
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    private let createAccountButotn: UIButton = {
        return UIButton()
    }()
    
    private let headerView: UIView = {
        return UIView()
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubViews()

        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //assign frames
    }
    
    private func addSubViews(){
        view.addSubview(usernameEmailField)
        view.addSubview(passwordField)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(createAccountButotn)
        view.addSubview(headerView)
    }
    
    @objc private func didTapLoginButton(){}
    
    @objc private func didTapTermsButton(){}
    
    @objc private func didTapPrivacyButton(){}
    
    @objc private func didTapCreateAccountButton(){}
    
    

    
}
