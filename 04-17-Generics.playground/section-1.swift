// Playground - noun: a place where people can play

import Foundation
import UIKit

//**** Generics ***

func swapElements<T>(inout a: T, inout b: T) {
    var temp = a
    a = b
    b = temp
}
var a = 3, b = 5
swapElements(&a, &b)
println("\(a) \(b)")

// ma anche per stringhe
var s1 = "qui", s2 = "qua"
swapElements(&s1, &s2)
s1
s2


// esempio di classe con generic
class MyClass<T:Equatable> {
    
    var items = [T]()
    var prop : T
    
    init(_ p : T) {
        prop = p
    }
    
    func push(item : T) {
        
        items.append(item)
    }
    
    func doSomething() {
        
        println(items[0])
    }
}
let mc : MyClass<String> = MyClass("pippo")


// uso del where
protocol SomeProtocol {
    typealias mytype
    func swapElements(a:mytype, b:mytype)
}
protocol SomeProtocol2 {
    typealias mytype
    func swapElements(a:mytype, b:mytype)
}
func myFunc<T:SomeProtocol, T2:SomeProtocol2 where T.mytype==T2.mytype>(a: T, b: T2) {
    // …
}
class MyClass3 : SomeProtocol {
    func swapElements(a:Int, b:Int) {
        
    }
}
class MyClass4 : SomeProtocol2 {
    func swapElements(a:Int, b:Int) {
        
    }
}
var a3 = MyClass3()
var a4 = MyClass4()
myFunc(a3, a4)

// protocol
protocol TheProducer {
    typealias Element
    func produce() -> Element
}
class MyProducer : TheProducer {
    
    typealias Element = Int
    func produce() -> Int {
        return Int(arc4random())
    }
}
let mp = MyProducer()
let n = mp.produce()


/**** BUG LLVM ERROR: unimplemented IRGen feature! ****/
// Enum generic per ritorno risultato
// LLVM ERROR: unimplemented IRGen feature!
// ma deve funzionare
/*
enum MyResult<A> {
    case Value(A)
    case Error(NSError)
}
*/



