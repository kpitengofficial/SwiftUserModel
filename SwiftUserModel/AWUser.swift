//
//  AWUser.swift
//  AnyWheel
//
//  Created by Kashyap Patel on 22/08/17.
//  Copyright © 2017 OpenXCell. All rights reserved.
//

import Foundation

class AWUser: NSObject, NSCoding{
    
    var id: String = ""
    var phoneNumber: String = ""
    var loggedIn: Bool = false

   // var arrTraverseLocation: [CLLocation] = [CLLocation(latitude: -37.8226, longitude: 144.97170000)]
    
    required override init(){
        super.init()
    }
    
    init(id: String, phoneNumber: String, loggedIn: Bool){
        
        self.id = id
        self.phoneNumber = phoneNumber
        self.loggedIn = loggedIn
    }
    
    public convenience required init?(coder aDecoder: NSCoder){
        
        let id = aDecoder.decodeObject(forKey: "id") as! String
        let phoneNumber = aDecoder.decodeObject(forKey: "phoneNumber") as! String
        let loggedIn = aDecoder.decodeBool(forKey: "loggedIn")

        self.init(id: id, phoneNumber: phoneNumber, loggedIn: loggedIn)
    }
    
    func encode(with aCoder: NSCoder){
        
        aCoder.encode(id, forKey: "id")
        aCoder.encode(phoneNumber, forKey: "phoneNumber")
        aCoder.encode(loggedIn, forKey: "loggedIn")

    }
    
}
