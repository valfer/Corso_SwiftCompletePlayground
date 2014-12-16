// Playground - noun: a place where people can play

import UIKit

/************** CLOSURES **************/
let myClosure = { (a:Int, b:Int) -> String in
    
    return String(a)+String(b)
}
myClosure(1,2)

// return opzionale
let myClosure2 = { (a:Int, b:Int) -> String in
    String(a)+String(b)
}
myClosure2(10,20)

// usata per l'esecuzione di una completion sugli argomenti passati
func MyFunc(a:Int, b:Int, completion : (Int, Int)->Int) -> Int {
    
    return completion(a, b)
}
MyFunc(10, 22) { (a:Int, b:Int) -> Int in
    return  a * b
}
MyFunc(10, 22) {$0*$1}

// cattura delle var in scope (e uso di map)
func myFunc2() {
    
    var myAr = [1, 2, 3]
    let mul = 5
    let myAr2 = myAr.map {(item : Int) -> Int in
        
        return item * mul
    }
    myAr2
}
myFunc2()

// funzione che torna un closure
func multiplyBy(m : Int) -> (Int)->Int {
    
    return { (res : Int)->Int in
        
        return res * m
    }
}
let multiplyBy3 : (Int)->Int = multiplyBy(3)
let res = multiplyBy3(50)

