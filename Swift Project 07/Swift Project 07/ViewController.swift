//
//  ViewController.swift
//  Swift Project 07
//
//  Created by Tommy Lau on 12/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFirstView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "First View"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewController.passToAnotherView))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func passToAnotherView() {
        print("Pressed Done")
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.stringPassed = textFirstView.text
        navigationController?.pushViewController(secondViewController, animated: true)
    }

}

