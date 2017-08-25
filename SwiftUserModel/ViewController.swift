//
//  ViewController.swift
//  SwiftUserModel
//
//  Created by Kashyap Patel on 25/08/17.
//  Copyright © 2017 DYMK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let model: AWModel = AWModel.sharedInstance
        model.user.id = "userID"
        model.user.phoneNumber = "userPhoneNumber"
        model.save()
        
        // I have added Model Save() Function in AppDelegate Termintate Function
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

