//
//  ViewController.swift
//  KarumiKata2LoginLogout
//
//  Created by Pablo Formoso Estrada on 11/12/2019.
//  Copyright © 2019 FormoSil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUser: UITextField!
    @IBOutlet weak var lblPassword: UITextField!
    @IBOutlet weak var btnLogOut: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        btnLogOut.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginUser(_ sender: Any) {
        lblUser.isHidden = true
        lblPassword.isHidden = true
        btnLogin.isHidden = true
        btnLogOut.isHidden = false
    }
    
    @IBAction func logout(_ sender: Any) {
        lblUser.isHidden = false
        lblPassword.isHidden = false
        btnLogin.isHidden = false
        btnLogOut.isHidden = true
    }
}

