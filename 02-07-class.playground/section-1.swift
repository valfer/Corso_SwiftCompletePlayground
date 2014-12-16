// Playground - noun: a place where people can play

import UIKit

/************** CLASS **************/
class Person {
    
    var firstName:String?
    var lastName:String?
    
    func print() {
        
        if let f = firstName {
            if let l = lastName {
                println(f + " " + l)
            }
        }
    }

}
let p = Person()
p.firstName = "Valerio"
p.lastName = "Ferrucci"
p.print()

// le classi sono ref
let p2 = p
p2.firstName = "Mario"
p.print()

// test per vedere se punta alla stessa memoria
let p3 = Person()
p3.firstName = "Valerio"
p3.lastName = "Ferrucci"
p3.print()

if p === p3 {
    println("SI")
}

