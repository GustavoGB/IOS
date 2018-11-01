//
//  TodosTableViewController.swift
//  TodoItems
//
//  Created by Derrick Park on 2018-10-11.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class TodosTableViewController: UITableViewController {
	
	var todoList: TodoList = TodoList()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem = editButtonItem
        tableView.allowsMultipleSelectionDuringEditing = true
        
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItemSegue"{
            if let addItemVC = segue.destination as? AddItemTableViewController{
                addItemVC.delegate = self 
            }
        } else if segue.identifier == "EditItemSegue"{
            if let addItemVC = segue.destination as? AddItemTableViewController{
                if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for:cell) {
                    let item = todoList.todos[indexPath.row]
                    addItemVC.itemToEdit = item
                    addItemVC.delegate = self
                }
        }
    }
    }
	// MARK: TableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// number of rows
		return todoList.todos.count
	}
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// how each cell looks like
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItem", for: indexPath)
		// checkmark, todoLabel
		let item = todoList.todos[indexPath.row]
		configureCheckmark(for: cell, with: item)
        configuretodoLabel(for: cell, with: item)
		return cell	
	
        
}
	// MARK: TableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.isEditing{
            return 
        }
		// get the cell selected
		if let cell = tableView.cellForRow(at: indexPath) {
			// change the checked property of the TodoItem from model
			let item = todoList.todos[indexPath.row]
			item.toggleCheckmark()
			// uncheck(check) the checkmark from the cell
			configureCheckmark(for: cell, with: item)
		}
		// deselect the row (no-highlighting)
		tableView.deselectRow(at: indexPath, animated: true)
	}
	
	func configureCheckmark(for cell: UITableViewCell, with item: TodoItem) {
        if let cell = cell as? TodoTableViewCell{
		cell.checkmark.text = item.checked ? "✓" : ""
        }
	}
    func configuretodoLabel(for cell: UITableViewCell, with item: TodoItem) {
        if let cell = cell as? TodoTableViewCell{
            cell.todoLabel.text = item.text
        }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //remove from our model
        todoList.todos.remove(at: indexPath.row)
        //update our model
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }

}



extension TodosTableViewController : AddItemViewControllerDelegate{
    func addItemDidCancel(){
        navigationController?.popViewController(animated: true)
    }
    func addItemDidFinishAdding(_ item: TodoItem){
        navigationController?.popViewController(animated: true)
        //update model
        todoList.todos.append(item)
        //update tableview without animation
        //tableView.reloadData()
        //update tableview second way(with automatic animation)
        let index = todoList.todos.count - 1
        let indexPath  = IndexPath(row:index, section:0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        
    }
    
    func addItemDidFinishEditing(_ item: TodoItem) {
        //What is the index of the item\
        //update our model
        navigationController?.popViewController(animated: true)
        if let index = todoList.todos.index(of: item){
            todoList.todos[index] = item
        
        //      update tableview
        let indexPath = IndexPath(row:index,section:0)
            if let cell = tableView.cellForRow(at: indexPath) as? TodoTableViewCell{
                configuretodoLabel(for: cell, with: item)
            }
        }
    }
        navigationController?.popViewController(animated : true)
}
    
}
