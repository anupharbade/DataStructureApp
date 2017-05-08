//
//  DSStackApplicationsViewController.swift
//  DataStructures
//
//  Created by Anup Harbade on 4/30/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSStackApplicationsViewController: DSApplicationsViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(reverse(string: "Hello, Playground"))
        // Do any additional setup after loading the view.
    }
    
//    func perform(operation o:String) {
//        switch o {
//        case "reverse":
//            reverse(string: <#T##String#>)
//        default:
//            <#code#>
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reverse(string: String) -> String {
        
        var reversedString = ""
        if let stack = StackArray<Character>(count: string.length) {
         
            //!Push all the characters one by one in the stack.
            for char in string.characters {
                stack.push(item: char)
            }
            
            //!Pop the character one by one now, which will give reversed string
            while stack.top != -1 {
                let (_, oItem) = stack.pop()
                if let item = oItem {
                   reversedString.append(item)
                }
            }
        }
        
        return reversedString
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
