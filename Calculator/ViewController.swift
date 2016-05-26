//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    enum Operator {
        case add
        case subtract
        case divide
        case multiply
        case enter
        
        var displayString: String {
            switch self {
            case add: return "+"
            case subtract: return "-"
            case divide: return "/"
            case multiply: return "X"
            case enter: return "↩︎"
            }
        }
        
        
        var backgroundColor: UIColor {
            switch self {
            case add, subtract, divide, multiply: return .orangeColor()
            case enter: return .greenColor()
            }
        }
    }
    
    var stringAsNumber: Float {
        return Float(numberString) ?? 0.0
    }
    var label = UILabel()
    var button0 = UIButton()
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    var button5 = UIButton()
    var button6 = UIButton()
    var button7 = UIButton()
    var button8 = UIButton()
    var button9 = UIButton()
    var divideButton = UIButton()
    var multiplyButton = UIButton()
    var subtractButton = UIButton()
    var addButton = UIButton()
    var enterButton = UIButton()
    var numberButtons: [UIButton] {
        return [button0,button1,button2, button3, button4, button5, button6, button7, button8, button9]
    }
    
    var operatorButtons: [UIButton] {
        return [divideButton, multiplyButton, subtractButton, addButton, enterButton]
    }
    
    var isTypingNumber = false
    var numbers = [Int]()
    var numberString = ""
    var operatorSelected = ""
    
    var sharedStack = Stack.sharedStack
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpButtons()
        setUpNumberLabel()
        setUpConstraints()
    }
    
    
    func setUpConstraints() {
        
        view.addConstraint(label.topAnchor.constraintEqualToAnchor(view.topAnchor))
        view.addConstraint(label.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor, constant: 0.0))
        view.addConstraint(label.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor))
        view.addConstraint(label.heightAnchor.constraintEqualToAnchor(button7.heightAnchor, multiplier: 2.0))
        view.addConstraint(button7.topAnchor.constraintEqualToAnchor(label.bottomAnchor))
        view.addConstraint(button8.topAnchor.constraintEqualToAnchor(button7.topAnchor))
        view.addConstraint(button9.topAnchor.constraintEqualToAnchor(button7.topAnchor))
        view.addConstraint(divideButton.topAnchor.constraintEqualToAnchor(button7.topAnchor))
        view.addConstraint(button4.topAnchor.constraintEqualToAnchor(button7.bottomAnchor))
        view.addConstraint(button5.topAnchor.constraintEqualToAnchor(button7.bottomAnchor))
        view.addConstraint(button6.topAnchor.constraintEqualToAnchor(button7.bottomAnchor))
        view.addConstraint(multiplyButton.topAnchor.constraintEqualToAnchor(button7.bottomAnchor))
        view.addConstraint(button1.topAnchor.constraintEqualToAnchor(button4.bottomAnchor))
        view.addConstraint(button2.topAnchor.constraintEqualToAnchor(button4.bottomAnchor))
        view.addConstraint(button3.topAnchor.constraintEqualToAnchor(button4.bottomAnchor))
        view.addConstraint(subtractButton.topAnchor.constraintEqualToAnchor(button4.bottomAnchor))
        view.addConstraint(button0.topAnchor.constraintEqualToAnchor(button1.bottomAnchor))
        view.addConstraint(enterButton.topAnchor.constraintEqualToAnchor(button1.bottomAnchor))
        view.addConstraint(addButton.topAnchor.constraintEqualToAnchor(button1.bottomAnchor))
        view.addConstraint(addButton.leadingAnchor.constraintEqualToAnchor(enterButton.trailingAnchor))
        view.addConstraint(enterButton.leadingAnchor.constraintEqualToAnchor(button2.trailingAnchor))
        view.addConstraint(button0.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor))
        view.addConstraint(subtractButton.leadingAnchor.constraintEqualToAnchor(button3.trailingAnchor))
        view.addConstraint(button3.leadingAnchor.constraintEqualToAnchor(button2.trailingAnchor))
        view.addConstraint(button2.leadingAnchor.constraintEqualToAnchor(button1.trailingAnchor))
        view.addConstraint(button1.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor))
        view.addConstraint(multiplyButton.leadingAnchor.constraintEqualToAnchor(button6.trailingAnchor))
        view.addConstraint(button6.leadingAnchor.constraintEqualToAnchor(button5.trailingAnchor))
        view.addConstraint(button5.leadingAnchor.constraintEqualToAnchor(button4.trailingAnchor))
        view.addConstraint(button4.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor))
        view.addConstraint(divideButton.leadingAnchor.constraintEqualToAnchor(button9.trailingAnchor))
        view.addConstraint(button9.leadingAnchor.constraintEqualToAnchor(button8.trailingAnchor))
        view.addConstraint(button8.leadingAnchor.constraintEqualToAnchor(button7.trailingAnchor))
        view.addConstraint(button7.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor))
        view.addConstraint(button7.widthAnchor.constraintEqualToAnchor(label.widthAnchor, multiplier: 0.25))
        view.addConstraint(button7.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 1/6.0))
        view.addConstraint(button0.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button1.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button2.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button3.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button4.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button5.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button6.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button8.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button9.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(divideButton.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(multiplyButton.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(addButton.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(subtractButton.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(enterButton.heightAnchor.constraintEqualToAnchor(button7.heightAnchor))
        view.addConstraint(button0.widthAnchor.constraintEqualToAnchor(button7.widthAnchor,multiplier: 2.0))
        view.addConstraint(button1.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button2.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button3.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button4.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button5.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button6.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button8.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(button9.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(divideButton.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(multiplyButton.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(addButton.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(subtractButton.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        view.addConstraint(enterButton.widthAnchor.constraintEqualToAnchor(button7.widthAnchor))
        
    }
    
    func numberButtonPressed(button: UIButton) {
        var number = 0
        guard let index = numberButtons.indexOf(button) else { return }
        number = index
        if !isTypingNumber {
            numbers = [number]
            isTypingNumber = true
            numberString = "\(number)"
        } else {
            numbers.append(number)
            numberString += "\(number)"
        }
        label.text = numberString ?? "0"
    }
    
    func operatorButtonPressed(button: UIButton) {
        let operatorType = operatorForButton(button)
        if operatorType == .enter {
            isTypingNumber = false
            sharedStack.push(stringAsNumber)
            sharedStack.log()
        } else if operatorType == .add {
            if isTypingNumber == false {
                if sharedStack.count() == 2 {
                    let answer = sharedStack.arrayOfFloats[0] + sharedStack.arrayOfFloats[1]
                    label.text = String(answer)
                    sharedStack.pop()
                    sharedStack.pop()
                    sharedStack.push(answer)
                    sharedStack.log()
                } else {
                    label.text = "0"
                    numberString = "0"
                    sharedStack.arrayOfFloats = []
                    sharedStack.log()
                }
            }
        } else if operatorType == .subtract {
            if isTypingNumber == false {
                if sharedStack.count() == 2 {
                    let answer = sharedStack.arrayOfFloats[0] - sharedStack.arrayOfFloats[1]
                    label.text = String(answer)
                    sharedStack.pop()
                    sharedStack.pop()
                    sharedStack.push(answer)
                    sharedStack.log()
                } else {
                    label.text = "0"
                    numberString = "0"
                    sharedStack.arrayOfFloats = []
                    sharedStack.log()
                }
            }
        } else if operatorType == .multiply {
            if isTypingNumber == false {
                if sharedStack.count() == 2 {
                    let answer = sharedStack.arrayOfFloats[0] * sharedStack.arrayOfFloats[1]
                    label.text = String(answer)
                    sharedStack.pop()
                    sharedStack.pop()
                    sharedStack.push(answer)
                    sharedStack.log()
                } else {
                    label.text = "0"
                    numberString = "0"
                    sharedStack.arrayOfFloats = []
                    sharedStack.log()
                }
            }
        } else if operatorType == .divide {
            if isTypingNumber == false {
                if sharedStack.count() == 2 {
                    let answer = sharedStack.arrayOfFloats[0] / sharedStack.arrayOfFloats[1]
                    label.text = String(answer)
                    sharedStack.pop()
                    sharedStack.pop()
                    sharedStack.push(answer)
                    sharedStack.log()
                } else {
                    label.text = "0"
                    numberString = "0"
                    sharedStack.arrayOfFloats = []
                    sharedStack.log()
                }
            }
        }
    }
    
    func operatorForButton(button: UIButton) -> Operator {
        if button == divideButton { return .divide }
        if button == multiplyButton { return .multiply }
        if button == addButton { return .add }
        if button == subtractButton { return .subtract }
        if button == enterButton { return .enter }
        fatalError()
    }
    
    func setUpButtons() {
        for (index, button) in numberButtons.enumerate() {
            setUpNumberButton(button, index: index)
        }
        for button in operatorButtons {
            setUpOperatorButton(button, operatorType: operatorForButton(button))
        }
    }
    
    func setUpOperatorButton(button: UIButton, operatorType: Operator)  {
        button.setTitle(operatorType.displayString, forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.backgroundColor = operatorType.backgroundColor
        button.addTarget(self, action: #selector(operatorButtonPressed), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
    }
    
    func setUpNumberButton(button: UIButton, index: Int){
        button.setTitle(String(index), forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.backgroundColor = .grayColor()
        button.addTarget(self, action: #selector(numberButtonPressed), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
    }
    
    func setUpNumberLabel() {
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .whiteColor()
        label.backgroundColor = .blackColor()
        label.textAlignment = .Right
        view.addSubview(label)
    }
    
}
