//
//  ViewController.swift
//  ObjectFunctions
//
//  Created by Simon Arida on 6/7/17.
//  Copyright © 2017 NM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Label: UILabel!
    @IBOutlet var stopbtn: UIButton!
    
    var timer = Timer()
    var counter = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Startbtn(_ sender: Any) {
        
        
        counter = 0
        Label.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updatecounter), userInfo: nil, repeats: true)
        
        
    }
    
    func updatecounter() {
        
        
        counter += 1
        Label.text = String(counter)
        
        
    }
    
   
    @IBAction func Stopbtn(_ sender: Any) {
        
        timer.invalidate()
       
        
        
        
    }


}

