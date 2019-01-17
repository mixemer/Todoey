//
//  ViewController.swift
//  Todoey
//
//  Created by Mehmet Sahin on 1/16/19.
//  Copyright © 2019 Mehmet Sahin. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = [Item]()
    
    //let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let item = Item()
        item.title = "Buy bread"
        
        let item2 = Item()
        item2.title = "Buy bread"
        
        let item3 = Item()
        item3.title = "Buy bread"
        
        itemArray.append(item)
        itemArray.append(item2)
        itemArray.append(item3)
        
        for _ in 1...20 {
            let item4 = Item()
            item4.title = "a"
            itemArray.append(item4)
        }
        
//        if let items = defaults.array(forKey: "TodoItemArray") as? [String] {
//            itemArray = items
//        }
        
    }
    
    
    // MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        let item = itemArray[indexPath.row]
        cell.textLabel?.text = item.title
        
        // value = condition ? true : false
        cell.accessoryType = item.isDone ? .checkmark : .none
        
        return cell
    }
    
    
    // MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        itemArray[indexPath.row].isDone = !itemArray[indexPath.row].isDone
        
        tableView.reloadData()
    }
    
    
    // MARK: - Add New Item
    @IBAction func addBarButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add Item", message: "What you got on your mind?", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Add", style: .default) { (action) in
            let newItem = Item()
            newItem.title = textField.text!
            self.itemArray.append(newItem)
            // self.defaults.set(self.itemArray, forKey: "TodoItemArray")
            self.tableView.reloadData()
        }
        
        alert.addTextField {
            (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        alert.addAction(alertAction)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        present(alert, animated: true)
    }
}

