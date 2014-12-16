// Playground - noun: a place where people can play

import UIKit

class Animal {

    var speed:Float
    
    init() {
        speed = 4
    }
}

class Dog : Animal {
    
    var name:String
    
    override init() {
        
        name = "Bob"    // questa prima di super altrimenti self non è pronto
        super.init()    // Rule 1 - Designated initializers must call a designated initializer from their immediate superclass
        speed = 1.2     // questa dopo super altrimenti ce la sovrascrive
    }
    
    convenience init(s : Float) {
        
        self.init()     // Rule 2 - Convenience initializers must call another initializer available in the same class
        speed = s
    }
    
    convenience init(n : String) {
        
        self.init(s : 1.2)  // Rule 3 - Convenience initializers must ultimately end up calling a designated initializer
        name = "Jack"
    }
}
