//
//  LoginViewController.swift
//  Simple Login Screen
//
//  Created by David Ratliff on 2/15/17.
//  Copyright © 2017 Login Screen. All rights reserved.
//

import UIKit

/**
 * 1. Make sure users cannot add the same email or username twice
 * 2. Check if the email is a valid email. (regex)
 * 3. Check if user name is valid.
 * 4. Ensure password is strong (Needs a number and special character and needs to be at least 8 characters)
 * 5. Print log statements for each failure and success case
 **/

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var emailArray: [String] = []
    var usernameArray: [String] = []
    var passwordArray: [String] = []

    
    @IBAction func signupButtonPressed(_ sender: Any) {
        emailArray.append(emailTextField!.text!)
        usernameArray.append(usernameTextField!.text!)
        passwordArray.append(passwordTextField!.text!)
    }
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
