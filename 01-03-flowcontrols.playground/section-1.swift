// Playground - noun: a place where people can play

import UIKit

/************** FOR **************/
var i = 0   // se è nel for ha scope limitato
for _ in 0..<5 {
    println(i)
    i++
}
i

/************** SWITCH **************/
let str3 = "oggi è una bella giornata"
switch (str3) {
case "a", "b":
    println("caso 1")
default:
    println("default")
}
switch (i) {
case 0...1000:
    println("caso 1")
default:
    println("default \(i)")
}

let aTuple = ("Mario", 22)
switch(aTuple) {
case ("Mario", 22):
    println("ok")
case (_, 22):
    println("ok2")
default:
    println("default")
}
let aTuple3 = (22, 22)
switch(aTuple3) {
case (22, let y):
    println(y)
case let (x, y) where x==y:
    println("ok")
default:
    println("default")
}

/************** BREAK DA LABELED LOOP **************/
primoloop: for var i = 0; i < 100; i++ {
    for var j = 0; j < 100; j++ {
        j++
        if j > 10 {
            break primoloop
        }
    }
}



