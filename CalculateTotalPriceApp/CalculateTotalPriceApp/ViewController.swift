//
//  ViewController.swift
//  CalculateTotalPriceApp
//
//  Created by Naguru,Rehana on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
 
    var price1: Double = -1.1
    var price2: Double = -1.1
    var discount: Double = 25/100
    var tax: Double = 8.5/100
   
    @IBOutlet weak var prod1nameOutlet: UITextField!
    
    
    @IBOutlet weak var prod1priceOutlet: UITextField!
    
    
    @IBOutlet weak var prod2nameOutlet: UITextField!
    
    
    @IBOutlet weak var prod2priceOutlet: UITextField!
    
    
    @IBOutlet weak var prod1: UILabel!
    
    
    @IBOutlet weak var prod2: UILabel!
    
    
    
    @IBOutlet weak var output: UILabel!
    @IBAction func printReceipt(_ sender: Any) {
        var a = Double(prod1priceOutlet.text!)
        var b = Double(prod2priceOutlet.text!)
       var sum = a! + b!
        var totaldisc = sum - (sum! * discount)
        var total = totaldisc + (totaldisc! * tax)
        output.text = "\(total)"
        prod1.text = prod1priceOutlet.text
        prod2.text = prod2priceOutlet.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

