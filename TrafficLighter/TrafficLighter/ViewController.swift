//
//  ViewController.swift
//  TrafficLighter
//
//  Created by Simon Arida on 6/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var trafficlight: UIImageView!
    @IBOutlet var counterLabel: UILabel!
    @IBOutlet var startstopbtn: UIButton!
    var timer = Timer()
    var timer1 = Timer()
    var counter = 0
    var count = 3;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = String(counter)

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
        
    }

    @IBAction func startStopBtn(_ sender: Any) {
        if counter == 0 {
            
            count = 3
             trafficlight.image = UIImage(named: "TrafficLight")
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updatetimer), userInfo: nil, repeats: true)
            startstopbtn.isEnabled = false;
            startstopbtn.setTitle("", for: [])
            
            counter = 0
            counterLabel.text = String(counter)
        }
        else {
            timer1.invalidate()
            startstopbtn.setTitle("Restart", for: [])
            
            
        }
        if count == 0  {
            counter = 0
                    }
        
        
    }
    func updatetimer() {
        
    count -= 1
        switch count {
        case 2:
            trafficlight.image = UIImage (named: "TrafficLight3")
        case 1:
            trafficlight.image = UIImage (named: "TrafficLight2")
            startstopbtn.setTitle("Stop", for: [])
        default:
            trafficlight.image = UIImage (named: "TrafficLight1")
            timer.invalidate()
            
            startstopbtn.isEnabled = true
            timer1 = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(ViewController.updatetimer1), userInfo: nil, repeats: true)
            
        }
    }
    
    func updatetimer1() {
        
        
        counter += 1
        counterLabel.text = String(counter)
        
        
        
        
    }
    

}

