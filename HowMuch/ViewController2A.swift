//
//  ViewController2A.swift
//  HowMuch
//
//  Created by Ganesh Kafle on 2021-01-04.
//

import UIKit

class ViewController2A: UIViewController {

    @IBOutlet weak var FutureValueTextField: UITextField!
    
    @IBOutlet weak var HowManyTimesTextField: UITextField!
    
    @IBOutlet weak var AnnualInterestTextField2: UITextField!
    
    @IBOutlet weak var NumberOfYearsTextField2: UITextField!
    
    @IBOutlet weak var ResultLabel2: UILabel!
    
    
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
    
    @IBAction func EnterTapped2(_ sender: Any) {
        // Calculates single payout present value
        let a = Double(FutureValueTextField.text!)
        let b = Double(HowManyTimesTextField.text!)
        let c = Double(AnnualInterestTextField2.text!)
        let d = Double(NumberOfYearsTextField2.text!)
        
        if FutureValueTextField.text?.isEmpty ?? true {
            ResultLabel2.text = "*Please fill in all text fields"
        } else if HowManyTimesTextField.text?.isEmpty ?? true {
            ResultLabel2.text = "*Please fill in all text fields"
        } else if AnnualInterestTextField2.text?.isEmpty ?? true {
            ResultLabel2.text = "*Please fill in all text fields"
        } else if NumberOfYearsTextField2.text?.isEmpty ?? true {
            ResultLabel2.text = "*Please fill in all text fields"
        } else {
            
            let x = c! / 100
            let n = b! * d!
            let i = x / b!
            
            let Answer2 = a! / pow(1 + i, n)
            let Ans2 = String(format: "%.2f", Answer2)
        
            ResultLabel2.text = "$\(Ans2)"
            
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
