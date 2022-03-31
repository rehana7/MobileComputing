//
//  ViewController.swift
//  Naguru_FormatName
//
//  Created by Naguru,Rehana on 2/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    

    @IBOutlet weak var details: UILabel!
    
    @IBOutlet weak var fullN: UILabel!
    
    
    @IBOutlet weak var initialsL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var firstName = firstNameTextField.text!
        var lastName = lastNameTextField.text!
        details.text = "Details:"
        fullNameLabel.text = "FullName: \(lastName),\(firstName)"
        var finitial = firstName.prefix(1)
        var linitial = lastName.prefix(1)
        initialsLabel.text = "initials: \(finitial)\(linitial)"
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = " "
        lastNameTextField.text = " "
        fullNameLabel.text = " "
        initialsLabel.text = " "
        details.text = " "
        
        
        firstNameTextField.becomeFirstResponder()
        
        
    }
    

}

