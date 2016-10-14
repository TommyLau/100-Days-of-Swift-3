//
//  ViewController.swift
//  Swift Project 09
//
//  Created by Tommy Lau on 14/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stringToPass = "\"Twelve significant photographs in any one year is a good crop.\"\n—Ansel Adams\n\n"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = ""
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(passDataToAnotherView))

        passDataToAnotherView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func passDataToAnotherView() {
        let secondView = storyboard?.instantiateViewController(withIdentifier: "SBSecondView") as! SecondViewController
        secondView.stringPassed = stringToPass
        self.navigationController?.pushViewController(secondView, animated: true)
    }

}

