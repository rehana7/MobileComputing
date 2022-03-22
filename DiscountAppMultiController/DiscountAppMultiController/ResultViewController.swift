//
//  ResultViewController.swift
//  DiscountAppMultiController
//
//  Created by Naguru,Rehana on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var enteredAmount: UILabel!
    
    @IBOutlet weak var enteredDiscount: UILabel!
    
    
    @IBOutlet weak var priceAfterDiscount: UILabel!
    
    var amount = ""
    var discrate = ""
    var PriceAfterDisc = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredAmount.text = enteredAmount.text! + amount
        
        enteredDiscount.text = enteredDiscount.text! + discrate
        
        priceAfterDiscount.text! = priceAfterDiscount.text! + PriceAfterDisc

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Result: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
