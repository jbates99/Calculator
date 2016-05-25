//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var button0: UIButton!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var button7: UIButton!
    var button8: UIButton!
    var button9: UIButton!
    var divideButton: UIButton!
    var multiplyButton: UIButton!
    var subtractButton: UIButton!
    var addButton: UIButton!
    var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - LABEL
        label = UILabel()
        label.text = "0"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .whiteColor()
        label.backgroundColor = .blackColor()
        label.textAlignment = .Right
        label.font.fontWithSize(50)
        view.addSubview(label)
        
        // MARK: - NUMBER BUTTONS
        
        button0 = UIButton()
        button0.titleLabel?.text = "0"
        button0.titleLabel?.textColor = UIColor.darkGrayColor()
        button0.backgroundColor = .grayColor()
        button0.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button0)
    
        button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.titleLabel?.text = "1"
        button1.titleLabel?.textColor = UIColor.darkGrayColor()
        button1.backgroundColor = .grayColor()
        view.addSubview(button1)
        
        button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.titleLabel?.text = "2"
        button2.titleLabel?.textColor = UIColor.darkGrayColor()
        button2.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button2)
        
        button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.titleLabel?.text = "3"
        button3.titleLabel?.textColor = UIColor.darkGrayColor()
        button3.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.titleLabel?.text = "4"
        button4.titleLabel?.textColor = UIColor.darkGrayColor()
        button4.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button4)
        
        button5 = UIButton()
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.titleLabel?.text = "5"
        button5.titleLabel?.textColor = UIColor.darkGrayColor()
        button5.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button5)
        
        button6 = UIButton()
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.titleLabel?.text = "6"
        button6.titleLabel?.textColor = UIColor.darkGrayColor()
        button6.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button6)
        
        button7 = UIButton()
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.titleLabel?.text = "7"
        button7.titleLabel?.textColor = UIColor.darkGrayColor()
        button7.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button7)
        
        button8 = UIButton()
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.titleLabel?.text = "8"
        button8.titleLabel?.textColor = UIColor.darkGrayColor()
        button8.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button8)
        
        button9 = UIButton()
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.titleLabel?.text = "9"
        button9.titleLabel?.textColor = UIColor.darkGrayColor()
        button9.titleLabel?.backgroundColor = .grayColor()
        view.addSubview(button9)
        
        // MARK: - FUNCTION BUTTONS
        
        divideButton = UIButton()
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        divideButton.titleLabel?.text = ""
        divideButton.titleLabel?.textColor = .whiteColor()
        divideButton.titleLabel?.backgroundColor = .orangeColor()
        view.addSubview(divideButton)
        
        addButton = UIButton()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.titleLabel?.text = "+"
        addButton.titleLabel?.textColor = .whiteColor()
        addButton.titleLabel?.backgroundColor = .orangeColor()
        view.addSubview(addButton)
        
        subtractButton = UIButton()
        subtractButton.translatesAutoresizingMaskIntoConstraints = false
        subtractButton.titleLabel?.text = "-"
        subtractButton.titleLabel?.textColor = .whiteColor()
        subtractButton.titleLabel?.backgroundColor = .orangeColor()
        view.addSubview(subtractButton)
        
        multiplyButton = UIButton()
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.titleLabel?.text = "X"
        multiplyButton.titleLabel?.textColor = .whiteColor()
        multiplyButton.titleLabel?.backgroundColor = .orangeColor()
        view.addSubview(multiplyButton)
        
        enterButton = UIButton()
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.titleLabel?.text = "↩︎"
        enterButton.titleLabel?.textColor = .whiteColor()
        enterButton.titleLabel?.backgroundColor = .greenColor()
        view.addSubview(enterButton)
        
        
        // MARK: - Contraints
        
        // Mark: Label
        
        var constraint = NSLayoutConstraint(item: label,
                                            attribute: .Top,
                                            relatedBy: .Equal,
                                            toItem: view,
                                            attribute: .Top,
                                            multiplier: 1.0,
                                            constant: 0.0)
        view.addConstraint(constraint)
        
        
        constraint = NSLayoutConstraint(item: label,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Leading,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)

        constraint = NSLayoutConstraint(item: label,
                                        attribute: .Trailing,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: label,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 2.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // Mark: Top
        
        constraint = NSLayoutConstraint(item: button7,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: label,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button8,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: label,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button9,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: label,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: divideButton,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: label,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button4,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button5,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button8,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button6,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button9,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: multiplyButton,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: divideButton,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button1,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button4,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button2,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button5,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button3,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button6,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: subtractButton,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: multiplyButton,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button0,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button1,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: enterButton,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: button3,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: addButton,
                                        attribute: .Top,
                                        relatedBy: .Equal,
                                        toItem: subtractButton,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // Mark: Leading
        
        constraint = NSLayoutConstraint(item: addButton,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: enterButton,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)

        constraint = NSLayoutConstraint(item: enterButton,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button0,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button0,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Leading,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: subtractButton,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button3,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button3,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button2,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button2,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button1,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button1,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Leading,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: multiplyButton,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button6,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button6,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button5,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button5,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button4,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button4,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Leading,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: divideButton,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button9,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button9,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button8,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button8,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Trailing,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button7,
                                        attribute: .Leading,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Leading,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // MARK: Bottom 
        
        constraint = NSLayoutConstraint(item: button0,
                                        attribute: .Bottom,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: enterButton,
                                        attribute: .Bottom,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: addButton,
                                        attribute: .Bottom,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Bottom,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // Mark: Button 7 aspects
        
        constraint = NSLayoutConstraint(item: button7,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: label,
                                        attribute: .Width,
                                        multiplier: 0.25,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button7,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: view,
                                        attribute: .Height,
                                        multiplier: 1/6.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // MARK: Other Button Heights
        
        constraint = NSLayoutConstraint(item: button0,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button1,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button2,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button3,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button4,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button5,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button6,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button8,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button9,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: divideButton,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: multiplyButton,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: subtractButton,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: addButton,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: enterButton,
                                        attribute: .Height,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Height,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        // MARK: Other Button Widths
        
        constraint = NSLayoutConstraint(item: button0,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 2.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: enterButton,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: addButton,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: subtractButton,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: multiplyButton,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: divideButton,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button8,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button9,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button1,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button2,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button3,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button4,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button5,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button6,
                                        attribute: .Width,
                                        relatedBy: .Equal,
                                        toItem: button7,
                                        attribute: .Width,
                                        multiplier: 1.0,
                                        constant: 0.0)
        view.addConstraint(constraint)
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}