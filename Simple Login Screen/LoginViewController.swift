//
//  LoginViewController.swift
//  Simple Login Screen
//
//  Created by David Ratliff on 2/15/17.
//  Copyright © 2017 Login Screen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    //Arrays for user entries
    var emailArray: [String] = []
    var usernameArray: [String] = []
    var passwordArray: [String] = []

    
    @IBAction func signupButtonPressed(_ sender: Any) {
        
        emailArray.append(emailTextField!.text!)
        usernameArray.append(usernameTextField!.text!)
        passwordArray.append(passwordTextField!.text!)
        
        print(emailArray[0])
        
    }
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
