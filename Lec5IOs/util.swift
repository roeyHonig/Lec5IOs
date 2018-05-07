//
//  util.swift
//  Lec5IOs
//
//  Created by hackeru on 22 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import Foundation


func createARandom(upperLimit: Int)->(Int) {
    // there's a global function to preduce random numbers
    // UInt32 is a positive integer 32 bit - Unsigned
    
    //init UInt32(10) -> upper = 10
    let upper = UInt32(upperLimit)
    //random UInt32(0...<10)
    let randomNumber = arc4random_uniform(upper)
    // convert to int
    let r = Int(randomNumber)
    // return
    return r
}
