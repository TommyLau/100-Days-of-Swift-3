//
//  TipCalculator.swift
//  Swift Project 04
//
//  Created by Tommy Lau on 02/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import Foundation

class TipCalculator {
    func calculateTip(amount: Float, tip: Float) -> Float {
        return amount * tip
    }
    
    func calculateTotal(amount: Float, tip: Float) -> Float {
        return amount * (1 + tip)
    }
}
