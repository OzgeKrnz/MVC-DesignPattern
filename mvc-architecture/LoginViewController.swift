//
//  ViewController.swift
//  mvc-architecture
//
//  Created by özge kurnaz on 20.02.2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add listeners both email and password fields
        
        emailField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        
        

    }
    
    // email ya da pasword field boşsa btn enable kalır.
    @objc private func validateFields(){
        loginBtn.isEnabled = emailField.text != "" && passwordField.text != ""
    }

    @IBAction func loginBtnClicked(_ sender: UIButton) {
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!){ success in
            
            if success{
                self.goToHomePage()
            }else{
                print("Invalid credentials")
                self.emailField.text = nil
                self.passwordField.text = nil
            }
        }
    }
    
    // next viewcontroller
    private func goToHomePage(){
        let controller = storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

