//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Naguru,Rehana on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0

    @IBAction func calcDiscountButton(_ sender: UIButton) {
        // REad the values
        var amount = Double(amountOutlet.text!)
        var discountRate = Double(discountRateOutlet.text!)
        
        priceAfterDiscount = amount! - (amount! * discountRate!/100)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "Resultsegue"
        {
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOutlet.text!
            destination.discrate = discountRateOutlet.text!
            destination.PriceAfterDisc = String(priceAfterDiscount)
            
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

