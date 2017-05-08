//
//  DSMainTableViewController.swift
//  Stack
//
//  Created by Anup Harbade on 4/29/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSMainTableViewController: UITableViewController {

    lazy var dataStructures = DSDataProvider.sharedInstance.supportedDataStructures()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataStructures.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DSMainTableViewCell", for: indexPath)
        
        let dataStructure = dataStructures[indexPath.row] as DataStructure
        cell.textLabel?.text = dataStructure.title;
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
//        if let operationsVC = segue.destination as? DSApplicationsTableViewController {
//            operationsVC.operations = DSDataProvider.sharedInstance.supportedOperations(for: <#T##DataStructure.DataStructureType#>)
//            operationsVC.dataStructureTitle = "Stack"
//        }
    }
 

}
