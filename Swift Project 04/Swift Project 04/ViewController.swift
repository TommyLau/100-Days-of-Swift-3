//
//  ViewController.swift
//  Swift Project 04
//
//  Created by Tommy Lau on 02/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAmountBeforeTax: UITextField!
    @IBOutlet weak var labelTipPercent: UILabel!
    @IBOutlet weak var labelTipAmount: UILabel!
    @IBOutlet weak var labelTotalAmount: UILabel!
    @IBOutlet weak var sliderTip: UISlider!

    var amount: Float = 0
    var tip: Float = 0.15
    var tipCalculator = TipCalculator()
    
    @IBAction func sliderTipChanged(_ sender: UISlider) {
        self.tip = round(sender.value * 100) / 100
        self.calculateTip()
    }
    
    func addDoneButton() {
        let barButtonFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let barButtonDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewController.processInputAmount))
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.items = [ barButtonFlex, barButtonDone ]
        keyboardToolbar.sizeToFit()
        textAmountBeforeTax.inputAccessoryView = keyboardToolbar
    }
    
    func processInputAmount() {
        // End editing
        textAmountBeforeTax.endEditing(true)
        
        if let stringAmount = textAmountBeforeTax.text {
            self.amount = (stringAmount as NSString).floatValue
        }
        else {
            self.amount = 0
        }

        textAmountBeforeTax.text = String(format: "$%0.2f", self.amount)
        calculateTip()
    }
    
    func calculateTip() {
        let amountTip = self.tipCalculator.calculateTip(amount: self.amount, tip: self.tip)
        let amountTotal = self.tipCalculator.calculateTotal(amount: self.amount, tip: self.tip)
        
        labelTipPercent.text = String(format: "Tip (%.0f%%):", self.tip * 100)
        labelTipAmount.text = String(format: "$%0.2f", amountTip)
        labelTotalAmount.text = String(format: "$%0.2f", amountTotal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Change the input to decimal pad
        textAmountBeforeTax.keyboardType = UIKeyboardType.decimalPad
        
        // Add "Done" to the keypad
        addDoneButton()
        
        // Init with 15% tips
        sliderTip.value = self.tip
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

