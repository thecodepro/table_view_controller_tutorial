//
//  TableViewController.swift
//  code_pro_table_view_controller
//
//  Created by Zephaniah Cohen on 1/6/17.
//  Copyright © 2017 CodePro. All rights reserved.
//

import Foundation
import UIKit


class TableViewController : UITableViewController {
    
    let dataSource = ["Mary", "Alex", "Alice", "John"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Table View Data Source 
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomCell
        customCell.cellLabel.text = dataSource[indexPath.row]
        customCell.backgroundColor = UIColor.red
        return customCell
    }
}
