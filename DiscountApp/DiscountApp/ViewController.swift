//
//  ViewController.swift
//  DiscountApp
//
//  Created by Naguru,Rehana on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    var amount1:Double = -1.1
    var discount1:Double = -1.1
    
 
    
    @IBOutlet weak var amount: UITextField!
   
    
    
    @IBOutlet weak var discount: UITextField!
    
    
    
    @IBAction func submit(_ sender: Any) {
        
        var a = Double(amount.text!)
        var disc = Double(discount.text!)
        
        var price =  a! - (a! * disc! / 100)
      
        
        display.text = "\(price)"
        
    }
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
        // Do any additional setup after loading the view.
    }


}

