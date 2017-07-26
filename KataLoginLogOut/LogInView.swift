//
//  LogInView.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import Foundation

protocol LogInView {
    func showLogOut()
    func showLoginError()
}

class MockLogInView: LogInView {
    
    private var someoneInvokedShowError = false
    private var someoneInvokedShowLogOutView = false
    
    func getSomeoneInvokedShowError () -> Bool {
        return self.someoneInvokedShowError
    }
    
    func getSomeoneInvokedShowLogOutView () -> Bool {
        return self.someoneInvokedShowLogOutView
    }
    
    func showLoginError() {
        self.someoneInvokedShowError = true
    }

    func showLogOut() {
        self.someoneInvokedShowLogOutView = true
    }
}
