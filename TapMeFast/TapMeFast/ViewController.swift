//
//  ViewController.swift
//  TapMeFast
//
//  Created by Aaron on 20/06/2016.
//  Copyright © 2016 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var tapMeButton: UIButton!
    @IBOutlet var startGameButton: UIButton!
    
    var timer = Timer()
    
    var timeInt = 0
    var tapInt = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeInt = 10
        tapInt = 0
        
        timerLabel.text = String(timeInt)
        scoreLabel.text = String(tapInt)
        
        tapMeButton.isEnabled = false
        tapMeButton.alpha = 0.5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func TapMe(_ sender: AnyObject) {
        
        tapInt += 1
        scoreLabel.text = String(tapInt)
        
        
    }
    
    @IBAction func StartGame(_ sender: AnyObject) {
        
        if timeInt == 10 {
            
            tapInt = 0
            scoreLabel.text = String(tapInt)
            
            tapMeButton.isEnabled = true
            tapMeButton.alpha = 1
            
            startGameButton.isEnabled = false
            startGameButton.alpha = 0.5
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startCounter), userInfo: nil, repeats: true)
            
        }
        
        if timeInt == 0 {
            
            timeInt = 10
            tapInt = 0
            
            timerLabel.text = String(timeInt)
            scoreLabel.text = String(tapInt)
            
            startGameButton.setTitle("START GAME", for: [])
            
        }
        
    }
    
    
    func startCounter() {
        
        timeInt -= 1
        timerLabel.text = String(timeInt)
        
        if timeInt == 0 {
            
            timer.invalidate()
            
            tapMeButton.isEnabled = false
            tapMeButton.alpha = 0.5
            
            startGameButton.isEnabled = true
            startGameButton.alpha = 1
            
            startGameButton.setTitle("RESTART", for: [])
            
        }
        
        
    }
    
    
    
    
    
    
    


}

