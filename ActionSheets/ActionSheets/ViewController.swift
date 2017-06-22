//
//  ViewController.swift
//  ActionSheets
//
//  Created by Aaron on 06/07/2016.
//  Copyright © 2016 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ActionSheet(_ sender: AnyObject) {
        
        let optionMenu = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let Action1 = UIAlertAction(title: "Button 1", style: .default, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
            self.label.text = "Button 1 was pressed"
            
        })
        
        let Action2 = UIAlertAction(title: "Button 2", style: .default, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
            self.label.text = "Button 2 was pressed"
            
        })
        
        let Cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            
            (alert: UIAlertAction!) -> Void in
            
        })
        
        optionMenu.addAction(Action1)
        optionMenu.addAction(Action2)
        optionMenu.addAction(Cancel)
        
        self.present(optionMenu, animated: true, completion: nil)
        
        
        
        
    }
    
    
    


}

