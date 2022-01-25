//
//  ViewController.swift
//  VowelTester
//
//  Created by Naguru,Rehana on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        //Read the text
        var enteredText=textOutlet.text!
        // Check the text is vowel or not
        if(enteredText.contains("a") ||
           enteredText.contains("e") ||
           enteredText.contains("i") ||
           enteredText.contains("o") ||
           enteredText.contains("u")){
            displayLabel.text = "The text contains vowels"
        }
        else{
            displayLabel.text = "The text doesn't conatains vowels"
        }
        
        
    }
}

