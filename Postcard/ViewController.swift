//
//  ViewController.swift
//  Postcard
//
//  Created by Jorge Mendez on 1/29/15.
//  Copyright (c) 2015 Feather Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mMessageLbl: UILabel!
    @IBOutlet weak var mNameField: UITextField!
    @IBOutlet weak var mMessageField: UITextField!
    @IBOutlet weak var mSendMailBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSendMailPressed(sender: UIButton) {
        mMessageLbl.hidden = false
        mMessageLbl.text = mMessageField.text
        mMessageLbl.textColor = UIColor.redColor()
        
        mMessageField.text = ""
        mMessageField.resignFirstResponder()
        
        mSendMailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

