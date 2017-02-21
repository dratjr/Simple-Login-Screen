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
        
        //Clear keyboard
        self.view.endEditing(true)
        
        //Add values to the arrays
        emailArray.append(emailTextField!.text!)
        usernameArray.append(usernameTextField!.text!)
        passwordArray.append(passwordTextField!.text!)
        
        //Clear text fields
        emailTextField.text = ""
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    //Tells if email is good
    @IBAction func emailEditingDidEnd(_ sender: Any) {
        
        if validateEmailExisting(text: emailTextField.text!) && validateEmailFormat(candidate: emailTextField.text!)  {
            
            print ("Email good.")
            
        } else {
            
            print("Email bad")
        }
        
    }

    
    
    //Tells if username is long enough
    @IBAction func usernameEditingDidEnd(_ sender: Any) {
        
        if validateUsernameLength(text: usernameTextField.text!) {
            
            print("Username good")
            
        } else {
            
            print("Username bad")
        }
    }
    
    //Tells if password is good
    @IBAction func passwordEditingDidEnd(_ sender: Any) {
        
        if validatePasswordFormat(candidate: passwordTextField.text!) {
            
            print("password good")
            
        } else {
            
            print("password bad")
            
        }
    }
    
    
    //Email Validation Existing
    func validateEmailExisting(text: String) -> Bool {
        
        var result = true
        
        if emailArray.contains(emailTextField.text!) {
            
            result = false
        }
        
        return result
        
    }
    
    //Email Validation Format. True means email is good.
    func validateEmailFormat(candidate: String) -> Bool {
        
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)
    }
    
    //Username Validation Existing. True means not existing.
    func validateUsernameExisting(text: String) -> Bool {
        
        var result = true
        
        if usernameArray.contains(usernameTextField.text!) {
            
            result = false
        }
        
        return result
        
    }
    
    //Username Validation Length. True means username is long enough.
    func validateUsernameLength(text: String) -> Bool {
        
        var result = true
        
        if ((usernameTextField.text?.characters.count)! < 9) {
            
            result = false
        }
        
        return result
    }
    
    //Password Validation Format. True means password is good.
    func validatePasswordFormat(candidate: String) -> Bool {
        
        let passwordRegex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"

        
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: candidate)
    }
    
    
    //I don't know what this does but it seems important
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
