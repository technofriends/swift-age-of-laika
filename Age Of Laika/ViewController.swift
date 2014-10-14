//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Vaibhav's Devbox on 14/10/14.
//  Copyright (c) 2014 VP App Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        dogYearsLabel.hidden = false
        
        let humanYearsFromTextField = humanYearsTextField.text.toInt()!
        let conversionConstant = 7
        
        dogYearsLabel.text = "\(humanYearsFromTextField * conversionConstant)" + " Human Years"
        
        humanYearsTextField.resignFirstResponder()
    }

}

