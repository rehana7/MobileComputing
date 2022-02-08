//
//  ViewController.swift
//  Evenodd
//
//  Created by Naguru,Rehana on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOutlet: UITextField!
    
    

    @IBOutlet weak var output: UILabel!
    
    @IBAction func display(_ sender: UIButton) {
        let a = Int(numberOutlet.text!);
        if(a! % 2 == 0){
            output.text = "\(a!) is even number."
        }
        else {
            output.text = "\(a!) is odd number"
        }
        
    }
    
    @IBAction func clear(_ sender: Any) {
        
        numberOutlet.text = ""
    }
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }


}

