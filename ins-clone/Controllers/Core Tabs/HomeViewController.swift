//
//  ViewController.swift
//  ins-clone
//
//  Created by Jinyun Wang on 11/25/20.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthentication()
        
        
    }
    
    private func handleNotAuthentication(){
        //Check auth status
        if Auth.auth().currentUser == nil {
            //show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

