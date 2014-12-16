// Playground - noun: a place where people can play

import UIKit

/*
    - prop tutte (speed) inizializzate in init(), ok se optional
    - prop di superclass inizializzate dopo super.init
    - init con parametri (anche primo param ha nome esterno)
    - convenience init
    - deinit (playground non fa il release, quindi non si vede bene)

    - NOTA: se non inizializzo tutte le mie proprietà non viene creata init() implicita
*/

class Animal {

    var legs = 2
    let speed:Float
    var name:String?
    
    init() {
        println("Animal init()")
        speed = 4   // modifico costanti nella init
        // name no init ok perché optional
    }
    
    func myMethod() {
        // speed = 4, no perché è costante
    }
    
    deinit {
        println("Animal deinit")
    }
}

class Dog : Animal {
    
    /*
    init() {
        println("Dog init()")
        super.init()
        legs = 4
    }*/
    convenience override init() {
        self.init(legs: 4)
    }
    
    init(legs:Int) {
        println("Dog init()")
        super.init()
        self.legs = legs
    }
    
    deinit {
        println("Dog deinit")
    }
}

var c:Dog? = Dog(legs:4)
c = nil






