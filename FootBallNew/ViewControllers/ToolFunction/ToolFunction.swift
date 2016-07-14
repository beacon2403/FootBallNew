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

    
    class func retrievePlayerData(childRef : FIRDatabaseReference! ,var messages: [FIRDataSnapshot]!, completion : (result : NSArray) -> Void){
    
        childRef.observeEventType(.Value, withBlock: {snapshot in
            
            messages.append(snapshot)
            completion(result: messages);
        
        })
        NSLog("finished process get data from Firebase server");
    
    }
    
}
