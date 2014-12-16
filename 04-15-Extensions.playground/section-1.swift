// Playground - noun: a place where people can play

import UIKit

//**** Extensions ***

extension String {

    // nuovo metodo (reverse) aggiunto alla classe String
    func reverse() -> String {
        var reverseStr = ""
        
        for character in self {
            reverseStr = String(character) + reverseStr
        }
        
        return reverseStr
    }
    
    // proprietà calcolata (somma dei valori numerici UTF16 dei caratteri)
    var sum:UInt16 {
        
        var sum : UInt16 = 0
        for codeUnit in self.utf16 {
            sum += codeUnit
        }
        return sum
    }
}

let a : String = "today is tuesday"
a.reverse()
a.sum

// nuovo subscript per la classe Int
extension Int {
    
    subscript(var digitIndex: Int) -> Int {
        
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        let res = self / decimalBase
        return res % 10
    }
}
1675679900[4]

/** altri esempi **/
class MyClass {
    // qui tutti i metodi pubblici
}

private extension MyClass {
    // qui tutti i privati
}

// per aggiungere un protocollo
/*extension MyClass : Equatable {
    // qui metodi == ...
}*/
