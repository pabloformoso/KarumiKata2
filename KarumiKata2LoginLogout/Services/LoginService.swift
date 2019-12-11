//
//  LoginService.swift
//  KarumiKata2LoginLogout
//
//  Created by Pablo Formoso Estrada on 11/12/2019.
//  Copyright © 2019 FormoSil. All rights reserved.
//

import Foundation

class LoginService {
    
    //init(user: String, pass: String) {
    //    userName = user
    //    password = pass
    //}
    
    func login(u: String, p: String) -> Bool {
        return isGrantedUser(u: u, p: p)
    }
    
    private func isGrantedUser(u: String, p: String) -> Bool {
        return (u == "admin") && (p == "admin")
    }
}
