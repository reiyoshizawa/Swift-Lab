import UIKit

var str:String = "Hello, playground"
let message = "You can do it!"

// String interpolation
var name = "Derrick"
var messageWithName = "You can do it, \(name)"
messageWithName.replacingOccurrences(of: "Derrick", with: "John")

let years:[Int] = [1990, 1994, 1998, 2002]

print(str)
