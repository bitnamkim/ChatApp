//
//  ViewController.swift
//  ChatApp
//
//  Created by Pigman on 22/05/2019.
//  Copyright © 2019 Pigman. All rights reserved.
//

import UIKit
import ProgressHUD

class WelcomeViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //  MARK: - IBActions
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        dismissKeyboard()
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            
            loginUser()
            
        } else {
            ProgressHUD.showError("아이디 혹은 비밀번호가 올바르지 않습니다!")
            
        }
    }
    
    @IBAction func registerIdButtonAction(_ sender: Any) {
        
        dismissKeyboard()
        
        if emailTextField.text != "" && passwordTextField.text != "" {
            
            registerUser()
            
        } else {
            ProgressHUD.showError("모든 정보를 올바르게 입력해주세요!")
        }
        
    }
    
    @IBAction func backgroundTap(_ sender: Any) {
        dismissKeyboard()
    }
    
    
    //  MARK: - HelperFunctions
    
    func dismissKeyboard() {
        self.view.endEditing(false)
    }
    
    func cleanTextFields() {
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    func loginUser() {
        
        ProgressHUD.showError("로그인중..")
        
        FUser.loginUserWith(email: emailTextField.text!, password: passwordTextField.text!) { (error) in
            
            if error != nil {
                
                ProgressHUD.showError(error!.localizedDescription)
                return
            }
            
            self.goToApp()
            
        }
        
    }
    
    func registerUser() {
        print("등록 성공!")
    }
    
    //MARK: - GoToApp
    
    func goToApp() {
        
        dismissKeyboard()
        cleanTextFields()
        ProgressHUD.dismiss()
        print("다른 뷰로 넘어가기 성공!")
        
        //present app here
    }
}

