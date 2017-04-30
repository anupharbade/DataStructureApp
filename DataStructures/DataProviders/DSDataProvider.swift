//
//  DSDataProvider.swift
//  Stack
//
//  Created by Anup Harbade on 4/30/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSDataProvider: NSObject {

    static func supportedDataStructures() -> [String] {
       return ["Stack", "Queue", "Linked List", "Tree", "Graph"]
    }
    
    static func supportedOperations(_ forDataStructure:String) -> [String] {
        switch forDataStructure {
        case "Stack":
            return ["Reverse a String", "Prefix to Postfix", "Prefix to Infix", "Postfix to Prefix", "Postfix to Infix"]
        default:
            return []
        }
        
    }
    
}
