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
    @IBOutlet weak var lblStatus: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        btnLogOut.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginUser(_ sender: Any) {        
        if (lblUser.text == "admin" && lblPassword.text == "admin") {
            toogleView()
        } else {
            lblStatus.text = "You shall not pass!!"
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        let date = Date()
        let calendar = Calendar.current
        let seconds = calendar.component(.second, from: date)
        
        if (seconds % 2 == 0) {
            toogleView()
        }
    }
    
    private func toogleView() {
        lblUser.isHidden = !lblUser.isHidden
        lblPassword.isHidden = !lblPassword.isHidden
        btnLogin.isHidden = !btnLogin.isHidden
        btnLogOut.isHidden = !btnLogOut.isHidden
        lblStatus.text = ""
    }
}

