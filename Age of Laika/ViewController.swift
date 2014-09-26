//
//  ViewController.swift
//  Age of Laika
//
//  Created by Tony Christie on 15/09/2014.
//  Copyright (c) 2014 Spire. All rights reserved.
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

    @IBAction func convertToDogYearsButtonPress(sender: UIButton) {
        let conversionConstant = 7.0
        let yearsFromTextField = Double((humanYearsTextField.text as NSString).doubleValue)
        dogYearsLabel.text = "Laika is \(yearsFromTextField * conversionConstant) years old"
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPress(sender: UIButton) {
        let yearsFromTextField = Double((humanYearsTextField.text as NSString).doubleValue)
        var realDogYears:Double
        if yearsFromTextField > 2
        {
            realDogYears = (10.5 * 2) + (yearsFromTextField - 2) * 4
        }
        else
        {
            realDogYears = yearsFromTextField * 10.5
        }
        
        dogYearsLabel.text = "Laika is \(realDogYears) years old"
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
        
    }
    

}

