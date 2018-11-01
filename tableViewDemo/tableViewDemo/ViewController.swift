//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Gustavo Gobetti on 2018-10-09.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    static var students = ["Kenta","Minami","Marcelo","Giada","Nagisa","Bianca","Yukako",
                           "Rei", "Alex", "Javier", "Juan","Natsumi", "Suelen", "Marla", "Enre E", "Gustavo", "Chin", "Charles", "Enre A"]
    static var positions = ["Japan","Japan","Brazil","Italy","Japan","Brazil","Japan",
                            "Japan", "Korea", "Brazil", "Mexico","Japan", "Brasil", "Brazil", "Enre E", "Gustavo", "Tailand", "Charles", "Enre A"]
    
    
    
   
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var nameStudent: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Details",let detailVC = segue.destination as? DetailViewController {
            
            if let cell = sender as? StudentTableViewCell,let indexPath = myTableView.indexPath(for: cell){
                
                let selectedIndex = indexPath.row
                detailVC.nameString = ViewController.students[selectedIndex]
                detailVC.positionString = ViewController.positions[selectedIndex]
               
                
                
            }
            
        }
    
}
}


extension ViewController:UITableViewDataSource {
    //how many rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.students.count    }
    //how many section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // what do display for each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for : indexPath) as! StudentTableViewCell
        cell.studentName.text = ViewController.students[indexPath.row]
        cell.contry.text = ViewController.positions[indexPath.row]
        return cell
        
}
}
    extension ViewController: UITableViewDelegate{
        
}
