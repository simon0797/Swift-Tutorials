//
//  ViewController.swift
//  FactBank
//
//  Created by Aaron on 20/06/2016.
//  Copyright © 2016 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.layer.cornerRadius = 20
        label.clipsToBounds = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RandomFact(_ sender: AnyObject) {
        
        let array = ["When hippos are upset, their sweat turns red.",
                     "If you lift a kangaroo’s tail off the ground it can’t hop.",
                     "During your lifetime, you will produce enough saliva to fill two swimming pools.",
                     "Banging your head against a wall burns 150 calories an hour."]
        
        let RandomFact = Int(arc4random_uniform(UInt32(array.count)))
        label.text = array[RandomFact]
        
        
    }
    
    

}

