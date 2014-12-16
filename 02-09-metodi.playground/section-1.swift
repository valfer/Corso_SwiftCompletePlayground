// Playground - noun: a place where people can play

import UIKit

/*
    - nomi esterni
    - uso di self
*/

class Person {

    var prefix:String = "Sig."
    var children = ["Qui", "Quo", "Qua"]
    
    func printInLang(lang:String, prefix:String) {
        self.prefix = prefix
        // ...
    }
    
}
let p = Person()
// il primo non ha nome esterno, gli altri si
p.printInLang("ITA", prefix: "Dott.")







