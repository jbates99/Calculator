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
    
    func pop() {
        arrayOfFloats.removeLast()
    }
    
    func push(float: Float) {
    arrayOfFloats.append(float)
    }
    
    func log() {
        print(arrayOfFloats)
    }

    func count() -> Int {
        return arrayOfFloats.count
    }
}