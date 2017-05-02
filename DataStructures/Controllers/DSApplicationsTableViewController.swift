//
//  DSOperationsTableViewController.swift
//  Stack
//
//  Created by Anup Harbade on 4/30/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSApplicationsTableViewController: UITableViewController {
    
    var operations: [String] = []
    var dataStructureTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\(dataStructureTitle) Operations"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return operations.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DSOperationsTableViewCell", for: indexPath)
        
        cell.textLabel?.text = operations[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let controller = DSStackApplicationsViewController()
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
