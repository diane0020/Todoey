//
//  ViewController.swift
//  Todoey
//
//  Created by John Randolph Bangal on 18/12/2018.
//  Copyright © 2018 Diana Rose Bangal. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Farmer's Market", "Create Exchange Gift List", "Run the app properly"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    ////////////////////////////////////////////////////
 
    //MARK: TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK: TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
