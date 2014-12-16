// Playground - noun: a place where people can play

import UIKit

/************** ARRAY **************/
var arr1 = [1, 3, 6]
var arr2 = ["string", 34, 20.4]
arr1.append(36)
arr1[0] = 2
++arr1[0]
arr1.removeLast()
for item in arr1 {
    println(item)
}
var arrStr = [String](count:10, repeatedValue:"val")
// shorthand alternativa per gli array
var arrStr3 = [String](count:10, repeatedValue:"val")
var arrStr2 = Array(count:10, repeatedValue:"val")  // stessa cosa

//var myAr = [String](count:10, repeatedValue: "empty")
var myAr = Array(count:10, repeatedValue: "empty")

myAr[4...6] = ["napoli", "bari"]
myAr

// creo un array con un range
let arr = Array(1...10)

// filtro di un array con una funzione
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
arr2 = arr.filter(isEven)


/************** DICTIONARY **************/
var dict:Dictionary<String,String>
// shorthand alternativa per i dict
var dict3:[String:String]
var dict2 = ["roma":3, "milano":4, "barcellona":1]
dict2["napoli"] = 24
dict2.count
dict2["roma"] = 4
var oldVal = dict2.updateValue(40, forKey:"roma")
oldVal
dict2.count
dict2["roma"] = nil
dict2.count
dict2.removeValueForKey("milano")   // se levi roma di nuovo non succede nulla
dict2.count
for (key,val) in dict2 {
    println(key+String(val))
}

