//
//  ViewController.swift
//  Swift Project 01
//
//  Created by Tommy Lau on 01/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    var count = 0

    @IBAction func buttonReset(_ sender: AnyObject) {
        count = 0
        countLabel.text = String(count)
    }

    @IBAction func buttonTap(_ sender: AnyObject) {
        count = count + 1
        countLabel.text = String(count)
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

