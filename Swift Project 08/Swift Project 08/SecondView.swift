//
//  SecondView.swift
//  Swift Project 08
//
//  Created by Tommy Lau on 13/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var textSecondView: UITextView!
    
    var stringPassed = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textSecondView.text = stringPassed
        
        // Set right button to "Done"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: nil)
        
        // Register swipe up
        let gestureSwipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        gestureSwipeUp.direction = .up
        textSecondView.addGestureRecognizer(gestureSwipeUp)
        
        // Register swipe down
        let gestureSwipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipe(_:)))
        gestureSwipeDown.direction = .down
        textSecondView.addGestureRecognizer(gestureSwipeDown)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func swipe(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
                // Swipe down: Close keyboard
                case UISwipeGestureRecognizerDirection.down:
                    textSecondView.endEditing(true)
                // Swipe up: Begin edit
                case UISwipeGestureRecognizerDirection.up:
                    textSecondView.becomeFirstResponder()
                default:
                    break
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
