// Playground - noun: a place where people can play

import UIKit

//**** Typecast ***

/*
    - loop su array e "is" per vedere tipo
    - anche per una struct
    - typecast con as?
*/

// is
class Person {
}
class Worker:Person {
}
class Artist:Person {
}
var p = [Worker(),Worker(),Artist(),Artist(),Worker()]
for item in p {
    if item is Artist {
        println("Artista")
    } else if item is Worker {
        println("Worker")
    }
}

// anche per struct e enum
struct MyStruct {    
}
var a:Any?  //  = MyStruct() allora ok is
if a is MyStruct {
    println("MyStruct")
}

// as?
var p2 = [Worker(),Worker(),Artist(),Artist(),Worker()]
for item in p2 {
    if let artist = item as? Artist {
        println("Artista")
    } else if let artist = item as? Worker {
        println("Worker")
    }
}

// as
let myUIVC = UIViewController()
let myUITBC = myUIVC as? UITableViewController
// let myUITBC = myUIVC as UITableViewController    // questa crash perché myUIVC è proprio un ViewController, non un UITableViewC... quindi ci voleva as?


//--- QUESTO NO --/

//*** di che tipo è la mia var? Attenzione: swift non molto sofisticato nella reflection ***/
let str = "pippo"
println("tipo = \(str.dynamicType)")    // Metatype
reflect(str).summary
class MyClass {}
let mc = MyClass()
reflect(mc).summary

// oggetti ObjC OK!
let now = NSDate()
println("tipo = \(now.superclass as AnyObject!)")
println("tipo = \(NSStringFromClass(now.dynamicType))")






