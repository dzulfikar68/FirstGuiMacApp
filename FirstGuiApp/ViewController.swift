//
//  ViewController.swift
//  FirstGuiApp
//
//  Created by Dzulfikar Fauzi on 9/3/20.
//  Copyright © 2020 Dzulfikar Fauzi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var helloLabel: NSTextField!
    @IBOutlet weak var editTextSatu: NSTextField!
    @IBOutlet weak var radioOne: NSButton!
    @IBOutlet weak var radioTwo: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func actionButton(_ sender: Any) {
        var myName = editTextSatu.stringValue
        if myName.isEmpty {
            myName = "World"
        }
        let gretting = "Hello \(myName)!"
        helloLabel.stringValue = gretting
        
        let myAlert = NSAlert()
        var messageAlert: String = ""
        
        if radioOne.state == 1 {
            messageAlert = "this is RADIO ONE"
        } else if radioTwo.state == 1 {
            messageAlert = "this is RADIO TWO"
        }
        
        myAlert.messageText = messageAlert
        myAlert.runModal()
    }

}

