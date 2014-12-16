// Playground - noun: a place where people can play

import UIKit

/*
    - modifica di prop anche se instance è costante
    - calcolate: get e get/set
    - observer
    - class properties "maxPersons"
*/


class Person {
    
    //class var totPersons = 24   // error: class variables not yet supported
    // ... aspettiamo
    // invece se computed ok
    class var maxPersons : Int {
        return 200
    }
    var firstName:String?
    var lastName:String?
    
    var yob:Int = 1968
    
    // calcolate
    /*var eta : Int {
    
        let now = 2014
        return yob - now
    }*/
    
    // con setter
    var eta : Int {
        get {
            let now = 2014
            return yob - now
        }
        set /*(newEta)*/ {
            let now = 2014
            yob = now - newValue
        }
   }

    // observer (solo su stored, non calcolate)
    var address : String = "n.d." {
        willSet {
            println("address willSet to "+newValue)
        }
        didSet {
            println("address didSet from "+oldValue)
        }
    }
}


var p = Person()
// modifico anche se p è costante
p.firstName = "Valerio"
p.lastName = "Ferrucci"
p.address = "Via Ravà"

Person.maxPersons


