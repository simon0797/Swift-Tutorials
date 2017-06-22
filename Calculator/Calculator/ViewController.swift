//
//  ViewController.swift
//  Calculator
//
//  Created by Aaron on 06/07/2016.
//  Copyright © 2016 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var isFirstDigit = true
    var operation1: Double = 0
    var operation2 = "="
    
    var displayValue: Double {
        
        get {
            return NumberFormatter().number(from: label.text!)!.doubleValue
            
        }
        set {
            
            label.text = String(format: "%2.0f", newValue)
            isFirstDigit = true
            operation2 = "="
            
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func digitPressed(_ sender: AnyObject) {
        
        let digit = sender.currentTitle!
        
        label.text = isFirstDigit ? digit : label.text! + digit!
        isFirstDigit = false
        
    }
    
    @IBAction func cancelAction(_ sender: AnyObject) {
        
        displayValue = 0
        
    }
    
    @IBAction func calculateAction(_ sender: AnyObject) {
        
        switch operation2 {
            
            case "/": displayValue = operation1 / displayValue
            case "*": displayValue *= operation1
            case "+": displayValue += operation1
            case "-": displayValue = operation1 - displayValue
            
        default:
            break
        }
        
    }

    @IBAction func operationAction(_ sender: AnyObject) {
        
        operation2 = sender.currentTitle!!
        operation1 = displayValue
        isFirstDigit = true
        
    }
    
    
    
    
    
    
    
    
    

}

