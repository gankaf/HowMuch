//
//  ViewController.swift
//  HowMuch
//
//  Created by Ganesh Kafle on 2020-12-22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var PresentValueTextField: UITextField!
    
    @IBOutlet weak var AnnualInterestTextField: UITextField!
    
    @IBOutlet weak var NumberOfYearsTextField: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Looks for single or multiple taps.
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    //Calls this function when tap is recognised
    @objc func dismissKeyboard() {
        // Causes the view to resign the first responder status.
        view.endEditing(true)
        
    }
    
    
    @IBAction func EnterTapped(_ sender: Any) {
        //Calculates simple interest future value
        let a = Double(PresentValueTextField.text!)
        let b = Double(AnnualInterestTextField.text!)
        let c = Double(NumberOfYearsTextField.text!)
        
        if PresentValueTextField.text?.isEmpty ?? true {
            ResultLabel.text = "*Please fill in all text fields"
        } else if AnnualInterestTextField.text?.isEmpty ?? true {
            ResultLabel.text = "*Please fill in all text fields"
        } else if NumberOfYearsTextField.text?.isEmpty ?? true {
            ResultLabel.text = "*Please fill in all text fields"
        } else {
            
            let Answer = a! * (1 + (b! / 100) * c!)
            let Ans = String(format: "%.2f", Answer)
            
            ResultLabel.text = "$\(Ans)"
        }
        
        
        
    }
    
}

