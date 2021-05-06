//
//  ViewController3A.swift
//  HowMuch
//
//  Created by Ganesh Kafle on 2021-01-07.
//

import UIKit

class ViewController3A: UIViewController {


    @IBOutlet weak var FutureValueTextField4: UITextField!
    
    @IBOutlet weak var AnnualInterestTextField3: UITextField!
    
    @IBOutlet weak var NumberOfPaymentsTextField1: UITextField!
    
    @IBOutlet weak var NumberOfYears3: UITextField!
    
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
    
    @IBAction func EnterTapped4(_ sender: Any) {
        //Calculates simple annuity present value
        let a = Double(FutureValueTextField4.text!)
        let b = Double(AnnualInterestTextField3.text!)
        let c = Double(NumberOfPaymentsTextField1.text!)
        let d = Double(NumberOfYears3.text!)
        
        if FutureValueTextField4.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if AnnualInterestTextField3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if NumberOfPaymentsTextField1.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else if NumberOfYears3.text?.isEmpty ?? true {
            ResultLabel3.text = "*Please fill in all text fields"
        } else {
            
            let x = b! / 100
            let n = c! * d!
            let i = x / c!
            
            let s = pow(1 + i, n) - 1
            let t = s / i
            
            let Answer4 = a! / t
            let Ans4 = String(format: "%.2f", Answer4)
            
            ResultLabel3.text = "$\(Ans4)"
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
