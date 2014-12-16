// Playground - noun: a place where people can play

import UIKit

/************** FUNC **************/
// semplice
func printHello() {
    println("Hello")
}
printHello()

// con parametri
func printHello(you:String) {
    println("Hello"+you)
}
printHello("Valerio")

// ritorno
func hello(you:String) -> String {
    
    return "Hello"+you
}
print(hello("Valerio"))

// nome esterno
func hello2(who you:String) -> String {
    
    return "Hello"+you
}
println(hello2(who:"Valerio"))

// nome esterno uguale
func hello2(#you:String) -> String {
    
    return "Hello2"+you
}
println(hello2(you:"Valerio"))

// param opzionali
func getInt(a:Int = 23) -> Int {
    
    return a*a
}
getInt()

// variadic
func getIntVar(a:Int...) -> Int {
    
    a.count
    return a[0]*a[1]
}
getIntVar(10, 1)

// cambiovalore del parametro
func printHello4(var you:String) {
    
    you += "ciao"
    println("Hello"+you)
}
var a = "io"
printHello4(a)
a

// inout
func printHello5(inout you:String) {
    
    you += "ciao"
    println("Hello"+you)
}
var a2 = "io"
printHello5(&a2)
a2

// function types
// se uso var myFunc:(inout String) e assegno 
// printHello5 bomba! (il playground comncia ad avere problemi)
var myFunc:(String)->()
myFunc = printHello
myFunc("")

// funzioni annidate
func printHello6() {

    func printHello7() {
        println("Hello6-7")
    }
    printHello7()
}
printHello6()






