//
//  SecondViewController.swift
//  toDoList
//
//  Created by Eslam Moemen on 2/14/19.
//  Copyright © 2019 Eslam Moemen. All rights reserved.
//

import UIKit

class SecondViewController: FirstViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func press(_ sender: Any) {
        
        itemArray.append(textField.text!)
        defaults.set(itemArray, forKey: "todoListArray")
        print(itemArray)
    }
    


}

