//
//  ViewController3B.swift
//  HowMuch
//
//  Created by Ganesh Kafle on 2021-01-07.
//

import UIKit

class ViewController3B: UIViewController {

    @IBOutlet weak var PMTTextField2: UITextField!
    
    @IBOutlet weak var AnnualInterestTextField5: UITextField!
    
    @IBOutlet weak var NumberOfPaymentsTextField2: UITextField!
    
    @IBOutlet weak var NumberOfYearsTextField5: UITextField!
    
    @IBOutlet weak var ResultLabel5: UILabel!
    
    
    
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
    
    @IBAction func EnterTapped5(_ sender: Any) {
        //Calculates simple annuity future value
        let a = Double(PMTTextField2.text!)
        let b = Double(AnnualInterestTextField5.text!)
        let c = Double(NumberOfPaymentsTextField2.text!)
        let d = Double(NumberOfYearsTextField5.text!)
        
        if PMTTextField2.text?.isEmpty ?? true {
            ResultLabel5.text = "*Please fill in all text fields"
        } else if AnnualInterestTextField5.text?.isEmpty ?? true {
            ResultLabel5.text = "*Please fill in all text fields"
        } else if NumberOfPaymentsTextField2.text?.isEmpty ?? true {
            ResultLabel5.text = "*Please fill in all text fields"
        } else if NumberOfYearsTextField5.text?.isEmpty ?? true {
            ResultLabel5.text = "*Please fill in all text fields"
        } else {
            
            let x = b! / 100
            let n = c! * d!
            let i = x / c!
            
            let s = pow(1 + i, n) - 1
            let t = s / i
            
            let Answer5 = a! * t
            let Ans5 = String(format: "%.2f", Answer5)
            
            ResultLabel5.text = "$\(Ans5)"
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
