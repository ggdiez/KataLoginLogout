//
//  KataLoginLogOutTests.swift
//  KataLoginLogOutTests
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import XCTest
@testable import KataLoginLogOut

class KataLoginLogOutTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldReturnTrueIfEmailAndPasswordIsOK () {
        let apiClient = ApliClient()
        
        let result = apiClient.login(email: "pedro@karumi.com", password: "123456")
        
        XCTAssertEqual(true, result)
    }
    
    func testShouldReturnFalseIfEmailWrongAndPasswordIsOK () {
        let apiClient = ApliClient()
        
        let result = apiClient.login(email: "pedroche@karumi.com", password: "123456")
        
        XCTAssertEqual(false, result)
    }
    
    func testShouldReturnFalseIfEmailWrongAndPasswordIsFalse () {
        let apiClient = ApliClient()
        
        let result = apiClient.login(email: "pedroche@karumi.com", password: "123")
        
        XCTAssertEqual(false, result)
    }
    
    func testShouldReturnFalseIfEmailIsOKAndPasswordIsFalse () {
        let apiClient = ApliClient()
        
        let result = apiClient.login(email: "pedro@karumi.com", password: "123")
        
        XCTAssertEqual(false, result)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
