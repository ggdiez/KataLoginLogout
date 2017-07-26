//
//  ViewController.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var emailTextField :UITextField!
    @IBOutlet var passwordTextField :UITextField!
    @IBOutlet var logginButton: UIButton!
    @IBOutlet var textMessage: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showLogin()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showLogin (){
        self.logginButton.isEnabled = false
        self.textMessage.isHidden = true
    }
    
    func showLoginError () {
        self.textMessage.isHidden = false
    }
    
    func showLogOut () {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LogoutView") as! LogoutViewController
        
        self.present(viewController, animated: false, completion: nil)
    }
    
    @IBAction func logInButtonTapped () {
        let apiClient = ApliClient()
        
        if apiClient.login(email: self.emailTextField.text!, password: self.passwordTextField.text!) {
            self.showLogOut()
        } else {
            self.showLoginError()
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (self.emailTextField.text?.lengthOfBytes(using: .utf16))! > 0 && (self.passwordTextField.text?.lengthOfBytes(using: .utf16))! > 0 {
            self.logginButton.isEnabled = true
        }else{
            self.logginButton.isEnabled = false
        }
        
        return true
    }
    
    
}

