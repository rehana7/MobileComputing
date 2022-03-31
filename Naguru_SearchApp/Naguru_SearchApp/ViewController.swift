//
//  ViewController.swift
//  Naguru_SearchApp
//
//  Created by student on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    
    @IBOutlet weak var searchButton: UIButton!
   
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!

    @IBOutlet weak var previousImageButton: UIButton!
    
    @IBOutlet weak var nextImageButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var imageNum = 0;
    var topic: Int = -1
    var count: Int = -1
    var listOfArrays = [["author1","author2","author3","author4","author5"],["flower1","flower2","flower3","flower4","flower5"],["sport1","sport2","sport3","sport4","sport5"]]
    
    var author_keywords = ["author","poet","writer","book"]
    var tech_keywords = ["flower","plant","rose","fall"]
    var sport_keywords = ["sport","athletic","game","play"]
    var topics_description = [["Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.", "She is a British author and philanthropist known by her pen name J. K. Rowling. She wrote a seven-volume children's fantasy series, ","William Shakespeare was an English playwright, poet and actor. He is widely regarded as the greatest writer in the English language and the world's greatest dramatist. ","Theodor Seuss Geisel was an American children's author, political cartoonist, illustrator, poet, animator, and filmmaker. He is known for his work writing and illustrating more than 60 books","John Ray Grisham Jr. is an American novelist and lawyer known for his popular legal thrillers. According to the American Academy of Achievement, Grisham has written some bestsellers"],["Tulips are among the most popular of all garden flowers, and numerous cultivars and varieties have been developed. tulips. ","A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. ","Except for three South American species, the species of Helianthus are native to North America and Central America. ","Cherry blossoms are a symbolic flower of the spring, a time of renewal, and the fleeting nature of life. Their life is very short. After their beauty peaks around two weeks, the blossoms start to fall","Hyacinthoides non-scripta is a bulbous perennial plant, found in Atlantic areas from north-western Spain to the British Isles, and also frequently used as a garden plant. "],["Football, also called association football or soccer, is a game involving two teams of 11 players who try to maneuver the ball into the other team's goal without using their hands or arms.","Cricket is played with a bat and ball and involves two competing sides (teams) of 11 players. The field is oval with a rectangular area in the middle, known as the pitch","Hockey is a term used to denote various types of both summer and winter team sports which originated on either an outdoor field, ","Tennis is a game played with two opposing players (singles) or pairs of players (doubles) using tautly strung rackets to hit a ball of specified size","Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's"]]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topicInfoText.text = ""
        searchButton.isEnabled = false
        previousImageButton.isHidden = true
        nextImageButton.isHidden = true
        resetButton.isHidden = true
        resultImage.image = UIImage(named: "searchNotFound")
        
        
        
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        if(author_keywords.contains(searchTextField.text!)){
            topic = 0
            imageNum = 0
            buttonsDisable()
        }
        else if(tech_keywords.contains(searchTextField.text!)){
            topic = 1
            imageNum = 0
            buttonsDisable()
        }
        else if(sport_keywords.contains(searchTextField.text!)){
            topic = 2
            imageNum = 0;
            buttonsDisable()
        }
        else{
            topic = -1
            resultImage.image = UIImage(named: "searchNotFound")
            topicInfoText.text = "No matches found with the given Keywords."
            resetButton.isHidden = true
            nextImageButton.isHidden = true
            previousImageButton.isHidden = true
        
        }
        
        if(topic != -1)
        {
            previousImageButton.isEnabled = false
            nextImageButton.isEnabled = true
            count = listOfArrays[topic].count
            resultImage.image = UIImage(named: listOfArrays[topic][0])
            topicInfoText.text = topics_description[topic][0]
            
        }

        
        
    }
    
    
    
    @IBAction func showPrevImageBtn(_ sender: UIButton) {
        nextImageButton.isEnabled = true
    
                    imageNum -= 1
                    resultImage.image = UIImage(named: listOfArrays[topic][imageNum])
        topicInfoText.text = topics_description[topic][imageNum]
                    
                    if(imageNum == 0){
                        previousImageButton.isEnabled = false
                               
                        }
    }
    
    @IBAction func showNextImageBtn(_ sender: UIButton) {
        previousImageButton.isEnabled = true
         
                    imageNum += 1
                    resultImage.image = UIImage(named: listOfArrays[topic][imageNum])
        topicInfoText.text = topics_description[topic][imageNum]
                    if(imageNum == count-1){
                        nextImageButton.isEnabled = false
                        
                    }
        
    }
    
    @IBAction func searchTextFieldChange(_ sender: Any) {
        searchButton.isEnabled = true
    }
   
    func buttonsDisable(){
        nextImageButton.isHidden = false
        previousImageButton.isHidden = false
        resetButton.isHidden = false
        
    }
    
    @IBAction func resetButtonClick(_ sender: Any) {
        nextImageButton.isHidden = true
        previousImageButton.isHidden = true
        resetButton.isHidden = true
        searchTextField.text = ""
        searchButton.isEnabled = false
        topicInfoText.text = ""
        resultImage.image = UIImage(named: "searchNotFound")
        
        
    }
    
    
    
    
}

