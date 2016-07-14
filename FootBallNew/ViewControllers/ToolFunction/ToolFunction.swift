//
//  ToolFunction.swift
//  FootBallNew
//
//  Created by Admin on 7/14/16.
//  Copyright © 2016 Nguyen Hai Dang. All rights reserved.
//

import UIKit
import Firebase

class ToolFunction: NSObject {


    
//--------- GET DATABASE FROM FIREBASE ----------
    
    class func retrievePlayerData(childRef : FIRDatabaseReference! , completion : (result : NSDictionary) -> Void){
    
        childRef.observeEventType(.Value, withBlock: {snapshot in
            
            let dictResult = snapshot.value as! NSDictionary
            completion(result: dictResult);
        
        })
        NSLog("finished process get data from Firebase server");
    
    }
    

    
}
