//
//  ColorsTableViewController.swift
//  ColorsSplitViews
//
//  Created by Dongwoo Pae on 12/6/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    let colorController = ColorContoller()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colorController.colors.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.textLabel?.text = colorController.colors[indexPath.row].name
        return cell
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let navigationController = segue.destination as? UINavigationController,
                let colorDetailVC = navigationController.topViewController as? ColorDetailViewController else {fatalError()}
            
            colorDetailVC.color = colorController.colors[indexPath.row]
        }
    }
}
