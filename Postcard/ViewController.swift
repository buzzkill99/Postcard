//
//  ViewController.swift
//  Postcard
//
//  Created by sjbevan on 10/6/14.
//  Copyright (c) 2014 Buzzkill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterMessageNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Name label, update
        nameLabel.text = enterMessageNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        // Message label, update
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        messageLabel.hidden = false
        
        // Msg/name clear
        enterMessageTextField.text = ""
        enterMessageNameTextField.text = ""
        
        // Hide keyboard
        enterMessageTextField.resignFirstResponder()
        enterMessageNameTextField.resignFirstResponder()
        
        // Hide enter fields
        enterMessageNameTextField.hidden = true
        enterMessageTextField.hidden = true
        
        // Button, change text & button color
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.blueColor()
        
    }

}

