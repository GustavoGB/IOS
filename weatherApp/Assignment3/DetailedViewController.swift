//
//  DetailedViewController.swift
//  Assignment3
//
//  Created by Gustavo Gobetti on 2018-10-05.
//  Copyright © 2018 Natsumi Kobayashi. All rights reserved.
//

import Foundation
import UIKit

class DetailedViewController: UIViewController {
    var city : City!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.topItem?.title = city.name
        

        let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
        cityLabel.text = city.name
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)

        let tempLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 25, width: 200, height: 50))
        tempLabel.text = "Temperature:\(city.temp)˚C"
        tempLabel.textAlignment = .center
        tempLabel.font = UIFont(name:"Helvica Neue",size:30)
       
        let humidityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 50, width: 200, height: 50))
        humidityLabel.text = "Precipitation:\(city.precipitation)%"
        humidityLabel.textAlignment = .center
        humidityLabel.font = UIFont(name:"Helvica Neue",size:30)
        
        let summaryLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 75, width: 200, height: 50))
        summaryLabel.text = "Summary:\(city.summary)"
        summaryLabel.textAlignment = .center
        summaryLabel.font = UIFont(name:"Helvica Neue",size:30)
        
        
        
        view.addSubview(tempLabel)
        view.addSubview(cityLabel)
        view.addSubview(humidityLabel)
        view.addSubview(summaryLabel)
        
        
        }
}

