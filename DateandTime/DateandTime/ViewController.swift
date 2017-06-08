//
//  ViewController.swift
//  DateandTime
//
//  Created by Simon Arida on 6/8/17.
//  Copyright © 2017 NM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updatetimer), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updatetimer() {
        
        let dateFormatter = DateFormatter()
        let timeFormatter  = DateFormatter()
        
        dateFormatter.dateStyle = .full
        timeFormatter.timeStyle = .full
        
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
        timeLabel.text  = timeFormatter.string(from: NSDate() as Date)
    }
    
    
    

}

