//
//  ViewController.swift
//  TipCalculator
//
//  Created by Lenah Syed on 1/14/20.
//  Copyright © 2020 lenahsapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.1, 0.18, 0.2]
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

