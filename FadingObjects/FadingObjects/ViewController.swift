//
//  ViewController.swift
//  FadingObjects
//
//  Created by Aaron on 20/06/2016.
//  Copyright © 2016 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    @IBOutlet var button: UIButton!
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var switchObject: UISwitch!
    
    @IBOutlet var label4: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fadeIn(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 1, animations: {
            
            self.label.alpha = 1
            self.slider.value = 1
            
        })
        
        
    }
    
    @IBAction func fadeOut(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 1, animations: {
            
            self.label.alpha = 0
            self.slider.value = 0
            
        })
        
        
        
    }
    
    @IBAction func AlphaSlider(_ sender: AnyObject) {
        
        label.alpha = CGFloat(slider.value)
        
        
        
        
    }
    
    @IBAction func Hide(_ sender: AnyObject) {
        
        label2.isHidden = true
        
    }
    
    @IBAction func Reveal(_ sender: AnyObject) {
        
        label2.isHidden = false
        
    }
    
    @IBAction func amIHidden(_ sender: AnyObject) {
        
        if label2.isHidden == true {
            
            label3.text = "Object is hidden"
            
        } else {
            
            label3.text = "Object is revealed"
            
        }
        
        
        
    }
    
    @IBAction func enable(_ sender: AnyObject) {
        
        button.isEnabled = true
        segmentControl.isEnabled = true
        switchObject.isEnabled = true
        
        
    }
    
    @IBAction func disable(_ sender: AnyObject) {
        
        button.isEnabled = false
        segmentControl.isEnabled = false
        switchObject.isEnabled = false
        
        
        
        
    }
    
    
    @IBAction func amIEnabled(_ sender: AnyObject) {
        
        if button.isEnabled == true {
            
            label4.text = "objects are enabled"
            
        } else {
            
            label4.text = "objects are disabled"
            
        }
        
        
        
    }
    
    
    
    
    
    
    


}

