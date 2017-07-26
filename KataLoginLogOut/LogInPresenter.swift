//
//  LogInPresenter.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import Foundation

class LogInPresenter {
    
    private let apiClient: ApliClient
    private let logInView: LogInView
    
    init(apliClient: ApliClient, loginView: LogInView) {
        self.apiClient = apliClient
        self.logInView = loginView
    }
    
    public func login (email: String, password: String) {
        if apiClient.login(email: email, password: password) {
            self.logInView.showLogOut()
        }else{
            self.logInView.showLoginError()
        }
    }
}
