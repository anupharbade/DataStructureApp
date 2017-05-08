//
//  DSOperationsViewController.swift
//  Stack
//
//  Created by Anup Harbade on 4/30/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSApplicationsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.actionButton.layer.cornerRadius = 0.5
        self.outputLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
