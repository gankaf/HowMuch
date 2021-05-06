//
//  ViewController2B.swift
//  HowMuch
//
//  Created by Ganesh Kafle on 2021-01-04.
//

import UIKit

class ViewController2B: UIViewController {

    @IBOutlet weak var PresentValueTextField3: UITextField!
    
    @IBOutlet weak var AnnualInterestTextField3: UITextField!
    
    @IBOutlet weak var HowManyTimesTextField3: UITextField!
    
    @IBOutlet weak var NumberOfYearsTextField3: UITextField!
    
    @IBOutlet weak var ResultLabel3: UILabel!
    
    
    
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
    
    @IBAction func EnterTapped3(_ sender: Any) {
        // Calculates single payout future value
        let a = Double(PresentValueTextField3.text!)
        let b = Double(AnnualInterestTextField3.text!)
        let c = Double(HowManyTimesTextField3.text!)
        let d = Double(NumberOfYearsTextField3.text!)
        
        if PresentValueTextField3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if HowManyTimesTextField3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if AnnualInterestTextField3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if NumberOfYearsTextField3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else {
            
            let x = b! / 100
            let n = c! * d!
            let i = x / c!
            
            let Answer3 = a! * pow(1 + i, n)
            let Ans3 = String(format: "%.2f", Answer3)
            
            ResultLabel3.text = "$\(Ans3)"
            
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
