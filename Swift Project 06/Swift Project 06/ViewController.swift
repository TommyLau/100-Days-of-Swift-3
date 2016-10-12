//
//  ViewController.swift
//  Swift Project 06
//
//  Created by Tommy Lau on 12/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDateAndTime: UILabel!
    
    let locale = Locale(identifier: "en_US")
    var formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set an application-wide "Timezone", use Chinese Standard Time
        if let myTimeZone = TimeZone(identifier: "Asia/Shanghai") {
            print("\(myTimeZone.identifier)")
        }

        // Set up the date format for US style
        formatter.locale = self.locale
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium

        labelDateAndTime.text = formatter.string(from: Date())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonRefresh(_ sender: AnyObject) {
        labelDateAndTime.text = formatter.string(from: Date())
    }

}

