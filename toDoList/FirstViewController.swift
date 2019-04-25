//
//  FirstViewController.swift
//  toDoList
//
//  Created by Eslam Moemen on 2/14/19.
//  Copyright © 2019 Eslam Moemen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    
    var itemArray = [String]()
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    override func viewDidAppear(_ animated: Bool) {
        if let item = defaults.array(forKey: "todoListArray") as? [String]{
            itemArray = item
        }
        table.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print()
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }


}

