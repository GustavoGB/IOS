//
//  ViewController.swift
//  TipCalculator
//
//  Created by Derrick Park on 2018-10-02.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numOfPeople: UITextField!
	@IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var calculateTip: UIButton!
    
    var roundingSetting = 0
    
    
    @IBAction func resultFunction(_ sender: AnyObject) {
        
        let bill = Double(billAmountTextField.text!)!
        var numberPeople = Double(numOfPeople.text!)!
        let tipPercentage = Double(self.tipPercentage.text!)!
        
        let tip = bill * tipPercentage / 100
        var total = bill + tip
        var split = total / numberPeople
        // need to write this values in the labels
        if numberPeople == Double(1) {
        resultLabel.text = "$\(total)"
        }else{
        resultLabel.text = "$\(split)"
        }
        
        
        
        
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
    
    
		NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: ViewController.keyboardWillShowNotification, object: nil)
	
		NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: ViewController.keyboardWillHideNotification, object: nil)
		
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
		view.addGestureRecognizer(tapGesture)
	}
	
	@objc func keyboardWillHide(notification: NSNotification) {
		if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
			
			let keyboardRectangle = keyboardFrame.cgRectValue
			let keyboardHeight = keyboardRectangle.height

			if view.frame.origin.y != 0 {
				view.frame.origin.y += keyboardHeight
			}
		}
	}
	
	@objc func keyboardWillShow(notification: NSNotification) {
		if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
			
			let keyboardRectangle = keyboardFrame.cgRectValue
			let keyboardHeight = keyboardRectangle.height
			
			if view.frame.origin.y == 0 {
				view.frame.origin.y -= keyboardHeight
			}
		}
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
    //method for calculating tip
        @objc func dismissKeyBoard(_ sender: UITapGestureRecognizer) {
		billAmountTextField.resignFirstResponder()
	}
	
}

