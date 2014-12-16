// Playground - noun: a place where people can play

import UIKit

//**** Protocols ***

// una mia classe che aderisce ad un protocollo
// definisco un mio protocollo e Autore vi aderisce
protocol Singer {
    func sing(text : String)
}

class Autore : Equatable, Singer {
    
    var nome : String
    var cognome : String
    
    init(nome : String, cognome : String) {
        self.nome = nome
        self.cognome = cognome
    }
    
    func sing(text : String) {
        println("singing \(text)")
    }
}
// nota che gli override degli operatori vanno fuori dalla classe (global scope)
func ==(lhs: Autore, rhs: Autore) -> Bool {
    // lhs=left-hand side rhs=right-hand side
    return lhs.nome==rhs.nome && lhs.cognome==rhs.cognome
}
let a = Autore(nome: "Mario", cognome: "Rossi")
let b = Autore(nome: "Vasco", cognome: "Rossi")
a != b  // equatable!

// anche come tipo di var
var aSinger:Singer

//**** Optional methods ***
@objc protocol Playable {
    optional func play()
}
class AutoreNSO : NSObject, Playable {
    
}
var c = AutoreNSO()
if c.respondsToSelector("play") {
    println("ok to call play")
    /* non banale però poi chiamare un metodo dinamicamente, non esiste più performSelector come era in objC, c'è il modo di farlo ma non banale (si usa dlsym con il nome simbolo completo di modulo etc, vedi http://www.lombax.it/?p=292)
    */
}

//**** Combinati ***
var combined:protocol<Singer, Playable>
