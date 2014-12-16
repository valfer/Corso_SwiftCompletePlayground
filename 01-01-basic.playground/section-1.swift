// Playground - noun: a place where people can play

//import Cocoa
import UIKit

/************** VAR E CONST **************/
var str = "Hello, playground", altravar = 23
str = "ciao"

let strconst = "ciao"
// strconst = "no"     // errore

/************** TIPO **************/
// let a:String    // errore, una let non può essere inizializzata dopo
var undefString:String    // ok e do il tipo
var unastringa = "una stringa"   // inference

/************** LOG **************/
print("questo è un messaggio di log")
let n = 1.88
println("questo è un messaggio di log \(n)")

/************** TYPE SAFE **************/
//var a:String = 20   // err non fa il typecast automatico
var aS:String = String(20)   // ok
var aI:Int? = "20".toInt()  // ok, poi vedremo il ?

let a = 10
let b:Double = 1
a + Int(b)  // devo convertire io da Double a Int

let aBool:Bool = true    // booleani

// literals fa lui la conversione
let aLit = 3 + 3.5


/************** TUPLES **************/
let aTuple = ("Mario", 22)
let (nome, eta) = aTuple
let (_, eta2) = aTuple
println(aTuple.0)
let aTuple2 = (nome:"Mario", eta:22)
aTuple2.nome
aTuple2.eta

/************** OPTIONALS **************/
var j = arc4random()
var opt:Int?

if j == 22 {
    opt = 22
    println(opt)
} else {
    opt = nil
}
// unwrap
// var aInt:Int = opt!     // forced
if let aInt2 = opt {
    // ok qui uso aInt2
}
// oppure "unwrap nella dichiarazione stessa"
var aIntegerO:Int! = "20".toInt()   // implicit, mi fido (20 è sempre convertibile)

let aString = "22"
let aInt = aString.toInt()	// torna Int?
if ((aInt) != nil) {
    
}

let aString2 = "pippo"
let aInt2 = aString2.toInt()	// torna Int?
// uncomment and see: fatal error...
//let c = aInt2! + 10

/************** ASSERT **************/
// assert(j==22, "Non doveva mai succedere!")

/************** OPERATORI **************/
let str1 = "oggi"
let str2 = " e domani"
var str3 = str1 + str2
var range = 0...5
var range2 = 0..<5

/************** STRINGA **************/
for ch in str3 {
    println(ch)
}
countElements(str3)

/************** QUICK LOOK **************/
var color = UIColor.redColor()
















