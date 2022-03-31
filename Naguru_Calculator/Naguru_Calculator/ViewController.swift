//
//  ViewController.swift
//  Naguru_Calculator
//
//  Created by Naguru,Rehana on 2/9/22.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var operand1 = 0.0
    var operand2 = 0.0
    var Result = 0.0
    var Operator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func acbutton(_ sender: UIButton) {
        outputLabel.text = ""
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        outputLabel.text = ""
        
    }
    
    
    @IBAction func changer(_ sender: UIButton) {
        operand1 = Double(outputLabel.text!)!
        if operand1 != 0 {
            operand1 = operand1 - 2*operand1
            outputLabel.text = String(operand1)
        }
       
        
    }
    
    
    @IBAction func divison(_ sender: UIButton) {
        
        Operator = "/"
        operand1 = Double(outputLabel.text!)!
        outputLabel.text = ""
        
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        
        Operator = "*"
        operand1 = Double(outputLabel.text!)!
        outputLabel.text = ""

    }
    
    @IBAction func minus(_ sender: UIButton) {
        //outputLabel.text = "-"
        Operator = "-"
        operand1 = Double(outputLabel.text!)!
        outputLabel.text = ""
    }
    
    
    @IBAction func plus(_ sender: UIButton) {
        
        Operator = "+"
        operand1 = Double(outputLabel.text!)!
        outputLabel.text = ""
    }
    
    
    @IBAction func reminder(_ sender: UIButton) {
        
        Operator = "%"
        operand1 = Double(outputLabel.text!)!
        outputLabel.text = ""
    }
    
    
    @IBAction func equal(_ sender: UIButton) {
        
        operand2 = Double(outputLabel.text!)!
                
                switch Operator {
                case "+":
                    Result = operand1+operand2
                    var x = Int(Result)
                    outputLabel.text = String(x)
                case "-":
                    Result = operand1-operand2
                    outputLabel.text = String(Result)
                case "*":
                    Result = operand1*operand2
                    outputLabel.text = String(Result)
                case "/":
                    var round1 = operand1/operand2
                    Result = round(round1 * 100000) / 100000.0
                    outputLabel.text = String(Result)
                    if (outputLabel.text == "inf") {
                        outputLabel.text = "ERROR"
                    }
               
                case "%":
                    Result = round((operand1/100 * operand2) * 10) / 10.0
                    outputLabel.text = String(Result)
                default:
                    outputLabel.text = "ERROR"
                    
                }
    }
    
    
    @IBAction func dot(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "."
    }
    
    @IBAction func zero(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "0"
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "1"
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "2"
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "3"
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "4"
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "5"
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "6"
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "7"
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "8"
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        outputLabel.text = outputLabel.text! + "9"
    }
    
    

}

