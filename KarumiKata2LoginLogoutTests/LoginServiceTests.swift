//
//  LoginServiceTests.swift
//  KarumiKata2LoginLogoutTests
//
//  Created by Pablo Formoso Estrada on 11/12/2019.
//  Copyright © 2019 FormoSil. All rights reserved.
//

import XCTest
@testable import KarumiKata2LoginLogout

class LoginServiceTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}
    
    func testGrantedLogin() {
        let loginService = LoginService()
        XCTAssertTrue(loginService.login(u: "admin", p: "admin"))
    }

    func testNonGrantedLogin() {
        let loginService = LoginService()
        XCTAssertFalse(loginService.login(u: "pokemon", p: "pokemon"))
    }
    
    func testUserNameOkPasswordWrong() {
        let loginService = LoginService()
        XCTAssertFalse(loginService.login(u: "admin", p: "pokemon"))
    }

}
