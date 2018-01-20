//
//  ChannelVC.swift
//  Smack-App
//
//  Created by Hayden Jamieson on 20/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

   
    @IBAction func loginBtnWasPressed(_ sender: Any) {
        shouldPerformSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
