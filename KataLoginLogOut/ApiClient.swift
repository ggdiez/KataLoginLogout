//
//  ApiClient.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import Foundation

class ApliClient {
    
    private let clock: Clock
    
    init(clock: Clock) {
        self.clock = clock
    }
    
    func login (email: String, password: String) -> Bool {
        return email == "pedro@karumi.com" && password == "123456"
    }
    
    func logout () -> Bool {
        let seconds = clock.currentTime
        let result = seconds  % 2
        return result == 0
    }
}

class Clock {
    
    var currentTime: Int {
        let now = Date().timeIntervalSince1970
        return Int(now / 1000 )
    }
}

class MockClock : Clock {
    
    let fixedTime: Int
    
    init(fixedTime: Int) {
        self.fixedTime = fixedTime
    }
    
    override var currentTime: Int {
        return fixedTime
    }
}
