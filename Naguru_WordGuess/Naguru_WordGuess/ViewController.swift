//
//  ViewController.swift
//  Naguru_WordGuess
//
//  Created by student on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessButton: UIButton!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var hintLabel: UILabel!

    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func primaryactiondone(_ sender: Any) {
        guessButtonAction()
        
        
    }
    
    // Declaration of array of words and their hint.
    var wordsArray = [ ["Moon","Earth's natural satellite."],
                              ["Jupiter","Biggest of Planets."],
                              ["Printer","Machine used to take prints."],
                               ["Lion","King of Animals."],
                               ["pen","Used to write."],
                               ["Apple","Red color fruit."]
           ]
    // array of images.
           var imagesArray = ["Moon","Jupiter","Printer","Lion","pen","Apple"]
    // initalization
    var maxNumOfWrongGuesses = 10
           var wordsRemaining:Int=0
           var wordsMissed = 0
           var lettersGuessed =  ""
           var wordGussedAsOfNow = ""
           var wordsGuessed = 0
           var currentWord = 0
           var wrongguesses = 0
           
           
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
                    guessButton.isEnabled = true
                    playAgainButton.isHidden = true
                    wordsRemaining = wordsArray.count
                    imageView.isHidden = true
                    updateLabels()
                    guessCountLabel.text = "You've made \(wrongguesses) Guesses"
                    userGuessLabel.text = ""
                    updateGuessingLetterWord(currentWord)
    }

     // functiomn for the guessletter button. It will call the guess action.
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        guessButtonAction()

    }
    func guessButtonAction(){
               guessCountLabel.isHidden = false
               wordGussedAsOfNow =  ""
               userGuessLabel.text = ""
               
               lettersGuessed += guessLetterField.text!.uppercased()
               for letter in wordsArray[currentWord][0].uppercased(){
                   if lettersGuessed.contains(letter) {
                       wordGussedAsOfNow += "\(letter)"
                       
                   }else{
                       wordGussedAsOfNow += "_ "
                       guessButton.isEnabled = true
                   }
               }
               guessLetterField.resignFirstResponder()
               print(wordGussedAsOfNow)
               userGuessLabel.text! = wordGussedAsOfNow
               guessLetterField.text = ""
               //disableGuessButton()
               wrongguesses += 1
               
               updateGuesses()
           
           }

    // function for play again button. It will initalize the varaiables to zero. and update lables is called.
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        currentWord += 1
                  imageView.isHidden = true
                  guessButton.isEnabled = true
                  guessCountLabel.text = "You have made \(wrongguesses) guesses"
                  if currentWord == wordsArray.count{

                      currentWord = 0
                      wordsGuessed = 0
                      wordsRemaining = 0
                      wordsMissed = 0
                      updateGuessingLetterWord(currentWord)
                  }else{
                      
                      updateGuessingLetterWord(currentWord)
                  }
                  updateLabels()

    }
    // Guesses will be performed after each play.
    func updateGuesses() {
                
                if wordGussedAsOfNow == wordsArray[currentWord][0].uppercased(){
                    imageView.isHidden =  false
                    wordsGuessed += 1
                    if currentWord == wordsArray.count-1{
                        guessCountLabel.text = "Congratulations, You are done, Please start over again"
                        imageView.image = UIImage(named:imagesArray[currentWord])
                        animate()
                    }else{
                        
                        guessButton.isEnabled = false
                        guessCountLabel.text = "You've got it! You took \(wrongguesses) guesses to get the word"
                        imageView.image = UIImage(named:imagesArray[currentWord])
                        animate()
                    }
                    wordsGuessedLabel.text! = "Total number of words guessed successfully: \(wordsGuessed)"
                    wordsRemainingLabel.text! = "Total number of words remaining in game:  \(wordsArray.count - wordsGuessed)"
                    playAgainButton.isHidden = false
                    guessLetterField.isEnabled = true
                    
                    
                }else{
                    guessCountLabel.text = "You have made \(wrongguesses) guesses"
                    
                }
                
                if wrongguesses == maxNumOfWrongGuesses {
                    imageView.isHidden =  false
                    if currentWord == wordsArray.count {
                        print(currentWord)
                        guessCountLabel.text = "Congratulations, You are done, Please start over again"
                        imageView.image = UIImage(named:imagesArray[currentWord])
                        animate()
                    }else{
        //                print(currentWord)
                        guessCountLabel.text = "You have used all the available guesses,Please start again.Try again."
                       // imageView.image = UIImage(named:imagesArray[currentWord])
                        imageView.image = UIImage(named: "tryagain")
                        animate()
                        wordsMissed += 1
                        disableGuessButton()
                        playAgainButton.isHidden = false
                        guessLetterField.isEnabled = false
                        wordsMissedLabel.text = "Total number of words guessed wrongly \(wordsMissed)"
                        wrongguesses = 0
                    }
                }
                
                
            }
    func animate(){
               let originalImageFrame = imageView.frame
               let imageWidthShrink: CGFloat = 20
               let imageHeightShrink: CGFloat = 20
               let smallerImageFrame = CGRect(
                   x: imageView.frame.origin.x + imageWidthShrink,
                   y: imageView.frame.origin.y + imageHeightShrink,
                   width: imageView.frame.width - (imageWidthShrink * 2),
                   height: imageView.frame.height - (imageHeightShrink * 2))
               
        imageView.frame = smallerImageFrame
                   
                   UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10.0, options: [.curveEaseIn], animations: {
                       self.imageView.frame = originalImageFrame
                   })
           }
           
           func disableGuessButton(){
               if guessLetterField.text!.count>0{
                   guessButton.isEnabled = true
                   let lastCharacter = guessLetterField.text!.last
                   guessLetterField.text = String(lastCharacter!).trimmingCharacters(in: .whitespaces)
               }else{
                   guessButton.isEnabled = false
               }
           }
    
    func updateLabels(){
                wordsMissedLabel.text! = "Total number of words guessed wrongly:  \(wordsMissed)"
                wordsGuessedLabel.text! = "Total number of words guessed successfully:   \(wordsGuessed)"
                wordsRemainingLabel.text! = "Total number of words remaining in game:  \(wordsArray.count - wordsGuessed)"
                totalWordsLabel.text! = "Total number of words in game:  \(wordsArray.count)"
            }
            
            func updateGuessingLetterWord(_ currentNumber:Int){
                userGuessLabel.text = ""
                
                for _ in 0..<wordsArray[currentNumber][0].count {
                    userGuessLabel.text! += "_ "
                }
                hintLabel.text = "HINT: \(wordsArray[currentNumber][1])"
                lettersGuessed = ""
                playAgainButton.isHidden = true
                guessLetterField.isEnabled = true
                wrongguesses = 0
                
                guessCountLabel.text = "You have made \(wrongguesses) guesses"
                
                
            }

    
}

