// Playground - noun: a place where people can play

import UIKit

/************** ENUM **************/
enum Align {
    
    case Left
    case Top
    case Bottom
    case Right
}
var myAlign = Align.Left
myAlign = .Right

enum Align2 : Int {
    
    case Left
    case Top = 4
    case Bottom
    case Right
}
Align2.Left.rawValue
Align2.Bottom.rawValue
let myAlign2 = Align2(rawValue: 6)
if myAlign2! == .Right {
    print("ok")
}

// enum per ritorno errore/valore
enum OperationResult {
    
    case Result([String])
    case Error(NSError)
}

func DoSomething() -> OperationResult {
    return OperationResult.Result(["ok", "res"])
}
let operationResult = DoSomething()

switch operationResult {
case let .Result(_res):
    // a buon fine
    let result = _res
case let .Error(_error):
    // errore
    let err = _error
}
