//
//  ViewController.swift
//  Swift Project 08
//
//  Created by Tommy Lau on 13/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFirstView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(sendToSencondView))
        self.title = " "
        textFirstView.text = "The quick brown fox jumps over the lazy dog."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sendToSencondView() {
        let secondView = storyboard?.instantiateViewController(withIdentifier: "SBSecondView") as! SecondView
        secondView.stringPassed = textFirstView.text
        navigationController?.pushViewController(secondView, animated: true)
    }

}

