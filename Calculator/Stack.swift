//
//  Stack.swift
//  Calculator
//
//  Created by Joshua Bates on 5/25/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Stack {
    private var arrayOfFloats = [Float]()
    
    static func pop() {
        arrayOfFloats.removeLast()
    }
    
    static func push(float: Float) {
    arrayOfFloats.append(float)
    }
    
    static func log() {
        print(arrayOfFloats)
    }

    static func count() -> Int {
        return arrayOfFloats.count
    }
}