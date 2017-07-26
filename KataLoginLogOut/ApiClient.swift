//
//  ApiClient.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import Foundation

class ApliClient {
    
    func login (email: String, password: String) -> Bool {
        return email == "pedro@karumi.com" && password == "123456"
    }
    
    func logout () -> Bool {
        let date = Date()
        let seconds: Int = Int(date.timeIntervalSince1970 / 1000 )
        let result = seconds  % 2
        
        return result == 0
    }
}
