//
//  LogoutViewController.swift
//  KataLoginLogOut
//
//  Created by Gonzalo Gonzalez  on 26/7/17.
//  Copyright © 2017 Gonzalo Gonzalez . All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    @IBOutlet var logoutButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showLogout()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showLogout () {
        self.logoutButton.isEnabled = true
    }
    
    @IBAction func logOutButtonTapped () {
        let apiClient = ApliClient(clock: Clock())
        
        if apiClient.logout() {
            self.dismiss(animated: false, completion: nil)
        }
    }
}

