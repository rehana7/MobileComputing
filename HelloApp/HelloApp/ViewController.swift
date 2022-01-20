//
//  ViewController.swift
//  HelloApp
//
//  Created by Naguru,Rehana on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var gradeOutlet: UITextField!
    @IBOutlet weak var displaylabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: Any) {
    
    //Read the data from the textbox and store it in a variable
    var name = nameOutlet.text!
        var grade = gradeOutlet.text!
    
    // change the display label with this format. Hello, Name!
        displaylabel.text = "Hello,\(name)! you got \(grade) grade"
    
    }
}

