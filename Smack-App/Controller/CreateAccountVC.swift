//
//  CreateAccountVC.swift
//  Smack-App
//
//  Created by Hayden Jamieson on 20/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        guard let pass = passTxt.text, passTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("Registered user")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
    }
    
    @IBAction func pickBgColourPressed(_ sender: Any) {
        
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
