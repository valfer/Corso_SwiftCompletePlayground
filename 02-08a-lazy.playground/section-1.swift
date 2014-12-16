// Playground - noun: a place where people can play

import UIKit

class Person {
    
    var firstName : String?
    var lastName : String?
    
    lazy var children = [Person(name:"qui"),Person(name:"quo"),Person(name:"qua")]
    
    init() {
        println("simple init")
    }
    init(name:String) {
        firstName = name
        lastName = ""
        println("init with name")
    }
    
    func print() {
        if let _firstName = firstName {
            if let _lastName = lastName {
                println(_firstName + " " + _lastName)
            }
        }
    }
}


let p = Person()
p.print()

// nota che init with name non viene chiamata mai prima di usare children -> lazy

// se levi lazy il playground ha qualche problema, (da approfondire)
p.children


