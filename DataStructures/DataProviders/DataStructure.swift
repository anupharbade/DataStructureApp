//
//  DataStructure.swift
//  DataStructures
//
//  Created by Anup Harbade on 5/6/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DataStructure: NSObject {
    
    
    enum DataStructureType : Int {
        case Undefined = 0
        case Stack
        case Queue
        case LinkedList
    }
    
    class DataStructureOperation: NSObject {
        //!Enum for Stack operations
        enum OperationType : Int {
            case Undefined
            case Stack_Reverse
            case Stack_PostfixToPrefix
            case Stack_PrefixToPostfix
            case Queue_Enqueue
            case Queue_Dequeue
            case LinkedList_Stack
            case LinkedList_Queue
        }
        
        var operationTitle = ""
        var operationType : OperationType = .Undefined
        
        init(withDictionary dictionary:[String:AnyObject]) {
            super.init()
            for (key, value) in dictionary {
                switch key {
                case "operationId":
                    let rawValue = value as! Int
                    if let operationType = OperationType(rawValue: rawValue) {
                        self.operationType = operationType
                    }
                case "operationTitle":
                    operationTitle = value as! String
                default:
                    break
                }
            }
        }
    }
    
    var title : String = ""
    var type : DataStructureType = .Undefined
    var operations : [DataStructureOperation] = []
    
    
    init(withDictionary dictionary:[String:AnyObject]) {
        
        super.init()
        
        for (key, value) in dictionary {
            switch key {
            case "title":
                title = value as! String
            case "id":
                let rawValue = value as! Int
                if let type = DataStructureType(rawValue: rawValue) {
                    self.type = type
                }
            case "operations":
                let operationsArray = value as! [[String:AnyObject]]
                for operationDict in operationsArray {
                    let operation = DataStructureOperation(withDictionary: operationDict)
                    operations.append(operation)
                }
            default: break
                
            }
        }
    }
    
}
