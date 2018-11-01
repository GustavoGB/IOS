//
//  ViewController.swift
//  Assignment3
//
//  Created by Natsumi Kobayashi on 2018/10/04.
//  Copyright © 2018 Natsumi Kobayashi. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    
    var city:City!
    var detailVC: DetailedViewController?
    
    
    //Navigation is a stack, so push and pop are usual for this cases
    @objc func showWeatherDetails(){
        detailVC = DetailedViewController()
        detailVC?.city = city 
        navigationController?.pushViewController(detailVC!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.topItem?.title = city.name 
        
        let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
        cityLabel.text = city.name
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)

        
        let butt = UIButton(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 25, width: 100, height: 50))
        butt.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        butt.setTitle("See Details...", for: .normal)
        butt.layer.cornerRadius = 10.0
        
        
        butt.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside) // adding an action
        view.addSubview(butt)
        view.addSubview(cityLabel)
        
    }


}

