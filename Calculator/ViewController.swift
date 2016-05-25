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
        button0.setTitle("0", forState: .Normal)
        button0.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button0.backgroundColor = .grayColor()
        button0.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button0)
    
        button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("1", forState: .Normal)
        button1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button1.backgroundColor = .grayColor()
        view.addSubview(button1)
        
        button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("2", forState: .Normal)
        button2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button2.backgroundColor = .grayColor()
        view.addSubview(button2)
        
        button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("3", forState: .Normal)
        button3.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button3.backgroundColor = .grayColor()
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("4", forState: .Normal)
        button4.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button4.backgroundColor = .grayColor()
        view.addSubview(button4)
        
        button5 = UIButton()
        button5.translatesAutoresizingMaskIntoConstraints = false
        button5.setTitle("5", forState: .Normal)
        button5.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button5.backgroundColor = .grayColor()
        view.addSubview(button5)
        
        button6 = UIButton()
        button6.translatesAutoresizingMaskIntoConstraints = false
        button6.setTitle("6", forState: .Normal)
        button6.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button6.backgroundColor = .grayColor()
        view.addSubview(button6)
        
        button7 = UIButton()
        button7.translatesAutoresizingMaskIntoConstraints = false
        button7.setTitle("7", forState: .Normal)
        button7.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button7.backgroundColor = .grayColor()
        view.addSubview(button7)
        
        button8 = UIButton()
        button8.translatesAutoresizingMaskIntoConstraints = false
        button8.setTitle("8", forState: .Normal)
        button8.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button8.backgroundColor = .grayColor()
        view.addSubview(button8)
        
        button9 = UIButton()
        button9.translatesAutoresizingMaskIntoConstraints = false
        button9.setTitle("9", forState: .Normal)
        button9.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button9.backgroundColor = .grayColor()
        view.addSubview(button9)
        
        // MARK: - FUNCTION BUTTONS
        
        divideButton = UIButton()
        divideButton.translatesAutoresizingMaskIntoConstraints = false
        divideButton.setTitle("/", forState: .Normal)
        divideButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        divideButton.backgroundColor = .orangeColor()
        view.addSubview(divideButton)
        
        addButton = UIButton()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setTitle("+", forState: .Normal)
        addButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        addButton.backgroundColor = .orangeColor()
        view.addSubview(addButton)
        
        subtractButton = UIButton()
        subtractButton.translatesAutoresizingMaskIntoConstraints = false
        subtractButton.setTitle("-", forState: .Normal)
        subtractButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        subtractButton.backgroundColor = .orangeColor()
        view.addSubview(subtractButton)
        
        multiplyButton = UIButton()
        multiplyButton.translatesAutoresizingMaskIntoConstraints = false
        multiplyButton.setTitle("X", forState: .Normal)
        multiplyButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        multiplyButton.backgroundColor = .orangeColor()
        view.addSubview(multiplyButton)
        
        enterButton = UIButton()
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.setTitle("↩︎", forState: .Normal)
        enterButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        enterButton.backgroundColor = .greenColor()
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