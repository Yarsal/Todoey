//
//  ViewController.swift
//  Todoey
//
//  Created by Customer on 25.01.18.
//  Copyright © 2018 Customer. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   //Mark - TableView Datasourse Methods

    //первый метод датасорс
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    
    //второй метод датасорс
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath )
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
    //Mark TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row]) //просто выведет номер строки, но если добавить itemArray вместо номера строки получим саму строку
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        
        } else { tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }//чтобы при нажатии появлялась checkmark(птичка) и если она есть при повторном нажатии она убиралась
        
        tableView.deselectRow(at: indexPath, animated: true) // чтобы при нажатии на строку она не выделялась серым
    
}

}
