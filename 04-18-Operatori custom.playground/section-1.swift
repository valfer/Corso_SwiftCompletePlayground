// Playground - noun: a place where people can play

import UIKit

//**** Operatori custom ***


/*
possono cominciare per:
/ = - + * % < > ! & | ^ . ~, or Unicode math, symbol, arrow, dingbat, and line/box drawing characters
*/

// prefix, infix or postfix

/****** PREFIX *********/
prefix operator *** {}
prefix func *** (inout x: Int) -> Int {
    
    x *= 1000
    return x
}

var a = 10
***a

// lancio una func come thread
prefix operator ~--> {}
prefix func ~--> (f: ()->()) {
    
    dispatch_async(dispatch_get_main_queue()) {f()}
}
func DoSomethingVeryLong()->() {
    
}
~-->DoSomethingVeryLong


/****** INFIX *********/

// applichiamo una funzione ad un var
func Upper(str:String)->String {
    return str.uppercaseString
}
infix operator >>> { associativity left precedence 140 }
func >>> <A> (a: A, f:(A)->A) -> A {
    return f(a)
}
let b = "pippo" >>> Upper

// applichiamo una funzione ad un optional solo se unwrap
infix operator >>! { associativity left precedence 140 }
func >>! <A> (a: A?, f:(A)->A) -> A? {
    if let _a = a {
        return .Some(f(_a))
    } else {
        return .None
    }
}
var c : String?
let d = c >>! Upper


/****** POSTFIX *********/
postfix operator *** {}
postfix func *** (inout x: Int) -> Int {
    
    let temp = x
    x *= 1000
    return temp
}

var e = 10
var e2 = e***   // e2 vale ancora 10 (postfix)
e
println(e)




