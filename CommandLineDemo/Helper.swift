//
//  Helper.swift
//  SwiftPracticeOne
//
//  Created by AdBox on 5/23/17.
//  Copyright © 2017 AdBox. All rights reserved.
//

import Foundation


func getUserInput() -> String {

    //get user input as data
    let standardInput = FileHandle.standardInput
    // get available input data with encoding
    let input = NSString(data: standardInput.availableData, encoding: String.Encoding.utf8.rawValue)
    //removing new line from input
    let inputWithOutNewLine = input?.trimmingCharacters(in: CharacterSet.newlines)
    
    //unrapping optional input value
    return inputWithOutNewLine!
}
