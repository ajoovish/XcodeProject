//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Ajay Vishwanathan on 7/10/17.
//  Copyright © 2017 Ajay Vishwanathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recording_label: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.enabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print(" Function viewWillAppear() is being called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
   //     print("Record button was pressed")
        recording_label.text = "Recording in Progress"
        stopRecordButton.enabled=true
        recordButton.enabled=false
    }

    @IBAction func stopRecord(sender: AnyObject) {
        recordButton.enabled=true
        stopRecordButton.enabled=false
        recording_label.text = "Tap to Record"
    }
}

