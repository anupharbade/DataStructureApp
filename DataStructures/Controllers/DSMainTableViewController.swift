//
//  DSMainTableViewController.swift
//  Stack
//
//  Created by Anup Harbade on 4/29/17.
//  Copyright © 2017 Anup Harbade. All rights reserved.
//

import UIKit

class DSMainTableViewController: UITableViewController {
    lazy var dataStructures = DSDataProvider.supportedDataStructures()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataStructures.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DSMainTableViewCell", for: indexPath)
        
        let title = dataStructures[indexPath.row]
        cell.textLabel?.text = title;

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let operationsVC = segue.destination as? DSOperationsTableViewController {
            operationsVC.operations = DSDataProvider.supportedOperations("Stack")
            operationsVC.dataStructureTitle = "Stack"
        }
    }
 

}
