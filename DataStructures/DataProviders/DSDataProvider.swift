//
//  DSDataProvider.swift
//  Stack
//
//  Created by Anup Harbade on 4/30/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSDataProvider: NSObject {
    var dataStructures : [DataStructure] = []
    
    //MARK: Singleton method
    static let sharedInstance : DSDataProvider = {
        let instance = DSDataProvider()
        return instance
    }()
    
    //MARK: Overridden initializer
    fileprivate override init() {
        //MARK: Read inputs from the plist
        var dataStructuresDictO : [[String:AnyObject]]? = nil
        
        if let filePath = Bundle.main.path(forResource: "Data", ofType: "plist") {
            dataStructuresDictO = NSArray(contentsOfFile: filePath) as? [[String:AnyObject]]
        }
        
        if let dataStructuresDict = dataStructuresDictO {
            for dataStructureDict in dataStructuresDict {
                let dataStructure = DataStructure(withDictionary: dataStructureDict)
                self.dataStructures.append(dataStructure)
            }
        }
    }
    
    //MARK: Interfaces
    func supportedDataStructures() -> [DataStructure] {
        return dataStructures
    }
    
    func supportedOperations(for dataStructureType:DataStructure.DataStructureType) -> [DataStructure.DataStructureOperation]? {
        
        for dataStructure in dataStructures {
            if dataStructure.type == dataStructureType {
                return dataStructure.operations
            }
        }
        
        return nil
    }
    
}
