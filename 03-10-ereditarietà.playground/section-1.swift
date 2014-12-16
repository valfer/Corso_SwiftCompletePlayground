// Playground - noun: a place where people can play

import UIKit

/*
    - Dog, subclass di Animal con 4 legs
    - override
    - override di get/set
    - nota che get/set non vengono chiamati nella init (invece chiamati da init di subclass)
    - pverride di observer
*/

class Animal {

    var legs : Int
    var speed = 20.0
    
    init() {
        legs = 2
    }
    
    func print() {
        println("Animale con \(legs) zampe")
    }
}

class Dog : Animal {
    
    override var legs:Int {
        get{return 4}
        set{
            println("Cane legs set")
        }
    }
    
    override var speed : Double {
        willSet{
            println("Cane speed willSet")
        }
        didSet{
            println("Cane speed didSet")
        }
    }

    override init() {
        super.init()
        legs = 4
    }

    override func print() {
        println("Cane con \(legs) zampe")
    }
}
let c = Dog()
c.print()
c.speed = 20





