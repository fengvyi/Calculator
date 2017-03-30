//
//  ViewController.swift
//  Calculator
//
//  Created by Zefeng Song on 17/3/29.
//  Copyright © 2017年 Zefeng Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var display: UILabel!
    
    private var userIsInMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping{
        let textCurrentInDisplay = display.text!
        display.text = textCurrentInDisplay + digit
        }else{
            display.text = digit
        }
        userIsInMiddleOfTyping = true
    }
    
    private var displayValue: Double{
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
   
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInMiddleOfTyping{
            brain.setOperand(operand: displayValue)
            userIsInMiddleOfTyping = false
        }
        if let mathmaticalSymbol = sender.currentTitle{
            brain.performOperation(symbol: mathmaticalSymbol)
        }
        displayValue = brain.result
    }

}

