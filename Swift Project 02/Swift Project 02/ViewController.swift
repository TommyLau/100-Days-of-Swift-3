//
//  ViewController.swift
//  Swift Project 02
//
//  Created by Tommy Lau on 02/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelCount: UILabel!
    @IBOutlet weak var button: UIButton!

    var count = 0
    //var timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.buttonTap), userInfo: nil, repeats: true)
    var timer: Timer?

    @IBAction func buttonReset(_ sender: AnyObject) {
        count = 0
        labelCount.text = String(count)
    }
    
    func buttonTap(sender: UIGestureRecognizer) {
        count += 1
        labelCount.text = String(count)
    }
    
    func buttonPress(sender: UIGestureRecognizer) {
        if sender.state == .ended {
            print("UIGestureRecognizer - State - Ended")
            //Do Whatever You want on End of Gesture
            timer?.invalidate()
        }
        else if sender.state == .began {
            print("UIGestureRecognizer - State - Began.")
            //Do Whatever You want on Began of Gesture
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(ViewController.buttonTap), userInfo: nil, repeats: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let gestureTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.buttonTap))
        let gesturePress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.buttonPress))
        button.addGestureRecognizer(gestureTap)
        button.addGestureRecognizer(gesturePress)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

