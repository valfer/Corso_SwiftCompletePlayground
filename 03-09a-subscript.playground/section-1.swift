// Playground - noun: a place where people can play

import UIKit

class Person {

    var children = ["Qui", "Quo", "Qua"]
    
    subscript(index:Int) -> String? {
        if index < children.count {
            return children[index]
        } else {
            return nil
        }
    }
    
    
}
let p = Person()

p[2]







