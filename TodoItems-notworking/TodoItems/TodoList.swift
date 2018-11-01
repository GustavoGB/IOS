//
//  TodoList.swift
//  TodoList
//
//  Created by Derrick Park on 2018-10-11.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import Foundation

class TodoList {
	var todos: [TodoItem] = []
	
	init() {
		let item1 = TodoItem()
		item1.text = "Take a walk"
		item1.checked = true
		let item2 = TodoItem()
		item2.text = "Study iOS"
		item2.checked = true
		let item3 = TodoItem()
		item3.text = "Update Resume"
		let item4 = TodoItem()
		item4.text = "Watch Netflix"
		let item5 = TodoItem()
		item5.text = "Study Design pattern"
		item5.checked = true
		
		todos.append(item1)
		todos.append(item2)
		todos.append(item3)
		todos.append(item4)
		todos.append(item5)
		
	}
	
}
