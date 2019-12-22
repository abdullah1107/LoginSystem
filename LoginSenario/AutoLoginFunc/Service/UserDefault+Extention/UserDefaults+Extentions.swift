//  UserDefaults+Extentions.swift
//  AutoLoginFunc
//  Created by Muhammad Abdullah Al Mamun on 21/12/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import Foundation

extension UserDefaults{
    
 func setValueForLogin(value:Bool?){
        
        if value != nil{
            
            UserDefaults.standard.set(value, forKey: "email")
        }
        else{
            
            UserDefaults.standard.removeObject(forKey: "email")
        }
        
        UserDefaults.standard.synchronize()
    }
    
    
    func getValueofLogin()->Bool?{
        return UserDefaults.standard.value(forKey: "email") as? Bool
    }
}

