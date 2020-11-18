//
//  ViewController.swift
//  DA App
//
//  Created by Guillermo Colin on 10/13/20.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet var loginErrorLabel_topVerticalSpacing: [NSLayoutConstraint]!
    
    @IBOutlet var loginErrorLabel_heightConstraint: [NSLayoutConstraint]!
    
    var username:String?
    var password:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginButton.layer.cornerRadius = 5
        self.loginButton.layer.masksToBounds = true
        
        self.passwordTextField.isSecureTextEntry = true
        
        self.loginErrorLabel_topVerticalSpacing[0].constant = 0
        self.loginErrorLabel_topVerticalSpacing[1].constant = 0
        
        self.loginErrorLabel_heightConstraint[0].constant = 0
        self.loginErrorLabel_heightConstraint[1].constant = 0
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        self.username = self.usernameTextField.text
        self.password = self.passwordTextField.text
        
        if self.username == "admin" && password == "123"{
            print("Access Granted!")
        }else{

            self.loginErrorLabel_topVerticalSpacing[0].constant = 20
            self.loginErrorLabel_topVerticalSpacing[1].constant = 20
            
            self.loginErrorLabel_heightConstraint[0].constant = 40
            self.loginErrorLabel_heightConstraint[1].constant = 40
            
            UIView.animate(withDuration: 1, animations: {
                self.view.layoutIfNeeded()
            }){ (finished) in
              
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                    
                    self.loginErrorLabel_topVerticalSpacing[0].constant = 0
                    self.loginErrorLabel_topVerticalSpacing[1].constant = 0
                    
                    self.loginErrorLabel_heightConstraint[0].constant = 0
                    self.loginErrorLabel_heightConstraint[1].constant = 0
                    
                    
                    UIView.animate(withDuration: 1, animations: {
                        self.view.layoutIfNeeded()
                    })
                })
            }
        }
    }
    

}

