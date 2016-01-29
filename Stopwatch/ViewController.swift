//
//  ViewController.swift
//  Stopwatch
//
//  Created by Hoyoung Jung on 1/17/16.
//  Copyright © 2016 Hoyoung Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var saved = []
    var laps = []
    
    var timer = NSTimer()
    var sec = 00
    var min = 00
    var hrs = 00
    var second = " "
    var minutes = " "
    var hours = " "
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        if sec >= 59 {
            sec = 00
            min++
        } else if min >= 59 {
            min = 00
            hrs++
        } else {
            sec++
        }
        
        if sec < 10 {
            second = "0"+String(sec)
        } else {
            second = String(sec)
        }
        
        if min < 10 {
            minutes = "0"+String(min)
        } else {
            minutes = String(min)
        }
        
        if hrs < 10 {
            hours = "0"+String(hrs)
        } else {
            hours = String(hrs)
        }
        
        timerLabel.text = hours + ":" + minutes + ":" + second
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        sec = 0
        min = 0
        hrs = 0
        timerLabel.text = "00:00:00"
        
    }
    
    @IBAction func lap(sender: AnyObject) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

