//
//  ViewController.swift
//  Battu_CurrencyConverter
//
//  Created by Battu,Shruthi on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredName: UITextField!
    
    
    @IBOutlet weak var IndCurrency: UITextField!
    
    
    @IBOutlet weak var USCurrency: UITextField!
    
    
@IBOutlet weak var displayresult: UILabel!
    override func viewDidLoad() {
         
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ConvertCurrency(_ sender: UIButton) {
        var  name = (enteredName.text!)
        var  currency0 = (IndCurrency.text!)
        var  currency1 = (USCurrency.text!)
        
        
        func convertDoubleToCurrency(amount: Double) -> String{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .currency
            numberFormatter.locale = Locale.current
            return numberFormatter.string(from: NSNumber(value: amount))!
            
        }
        func convertCurrencyToDouble(input: String) -> Double? {
             let numberFormatter = NumberFormatter()
             numberFormatter.numberStyle = .currency
             numberFormatter.locale = Locale.current
             return numberFormatter.number(from: input)?.doubleValue
        }
       
    }
    

}

