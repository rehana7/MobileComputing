//
//  ViewController.swift
//  WordGuess
//
//  Created by Naguru,Rehana on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
 
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    @IBOutlet weak var HintLabel: UILabel!
    
    
    @IBOutlet weak var LetterEntered: UITextField!
    
    
    @IBOutlet weak var CheckButton: UIButton!
    
    
    @IBOutlet weak var StatusLabel: UILabel!
    
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
              ["DOG", "Animal"],
              ["CYCLE", "Two wheeler"],
              ["MACBOOK", "Apple device"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CheckButton.isEnabled = false;
        word = words[count][0]
        DisplayLabel.text = ""
        updateUnderscores();
        HintLabel.text = "Hint: "+words[count][1]
        StatusLabel.text = ""
        

    }

    
    @IBAction func checkButtonClicked(_ sender: Any) {
        var letter = LetterEntered.text!
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
       for l in word{
           if lettersGuessed.contains(l){
               revealedWord += "\(l)"
           }
           else{
               revealedWord += "_ "
           }
           
       }
        DisplayLabel.text = revealedWord
        LetterEntered.text = ""
        
        if DisplayLabel.text!.contains("_") == false{
            PlayAgainButton.isHidden = false;
            CheckButton.isEnabled = false;
        }
        CheckButton.isEnabled = false

       }
    

    @IBAction func playAgainButtonClicked(_ sender: Any) {
        PlayAgainButton.isHidden = true
        lettersGuessed = ""
        count += 1
        if count == words.count{
            StatusLabel.text = "Congratulations! You are done with the game!"
            DisplayLabel.text = ""
            HintLabel.text = ""
        }
        else{
            word = words[count][0]
            HintLabel.text = "Hint: "
            HintLabel.text! += words[count][1]
            CheckButton.isEnabled = true
            DisplayLabel.text = ""
            updateUnderscores()
        }
        
    }
    
  
    @IBAction func enterLabelChanged(_ sender: Any) {
        var textEntered = LetterEntered.text!;
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        LetterEntered.text = textEntered
        if textEntered.isEmpty{
            CheckButton.isEnabled = false
        }
        else{
            CheckButton.isEnabled = true
        }
        
    }
    
    
    func updateUnderscores(){
        for letter in word{
            DisplayLabel.text! += "- "
        }
    }
    
}

