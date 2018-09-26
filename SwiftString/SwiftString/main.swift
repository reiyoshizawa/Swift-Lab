//
//  main.swift
//  SwiftString
//
//  Created by yoshizawarei on 2018/09/25.
//  Copyright © 2018 yoshizawarei. All rights reserved.
//

import Foundation

// Multiline strings
let names = """
One
Two
Three
"""
print(names)

var word = "cafe"
print("\(word) has \(word.count) characters. ")

word += "\u{301}" // accent U+0301
print("\(word) has \(word.count) characters. ")

let greeting = "Guten Tag!"
print(greeting[greeting.startIndex]) // G
print(greeting[greeting.index(before: greeting.endIndex)]) // !
print(greeting[greeting.index(after: greeting.startIndex)]) // u
print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)]) // a
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}
// "G u t e n  T a g !"
