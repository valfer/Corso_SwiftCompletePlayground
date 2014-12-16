// Playground - noun: a place where people can play

import UIKit

/*
- caso con proprietà optional
- caso con metodo : Person con prop Address e metodo nazione
*/

class Person {
    var name:String?
    
    func nazione(city : String) -> String? {
        
        if city == "Roma" {
            return "Italia"
        } else {
            return nil
        }
    }
}
var a = Person()
a.name = "Valerio"    // uncomment to successfull chain
let legs = a.name?.uppercaseString		// -> nil

// con un metodo
class Address {
    var city:String = "Roma"
    
    func nazione() -> String? {
        if city == "Roma" {
            return "Italia"
        } else {
            return nil
        }
    }
}
class Person2 {
    var address:Address = Address()
}
var p = Person2()
p.address.nazione()?.uppercaseString




