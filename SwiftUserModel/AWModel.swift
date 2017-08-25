//
//  AWModel.swift
//  AnyWheel
//
//  Created by Kashyap Patel on 22/08/17.
//  Copyright © 2017 OpenXCell. All rights reserved.
//

import Foundation

class AWModel: NSObject{
        
    var user: AWUser!
    static let instance : AWModel = AWModel()
    
    class var sharedInstance : AWModel {
        return instance
    }

    required override init() {
        
        print("AWModel Init")
        let ud = UserDefaults.standard
        
        if let data = ud.object(forKey: "AWUser") as? NSData {
            let unarc = NSKeyedUnarchiver(forReadingWith: data as Data)
            self.user = unarc.decodeObject(forKey: "root") as! AWUser
        } else{
            user = AWUser()
            ud.set(NSKeyedArchiver.archivedData(withRootObject: user), forKey: "AWUser")
            ud.synchronize()
        }
    }
    
    func save(){
        let ud = UserDefaults.standard
        ud.set(NSKeyedArchiver.archivedData(withRootObject: user), forKey: "AWUser")
        ud.synchronize()
    }
}
