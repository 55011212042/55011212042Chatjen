// Playground - noun: a place where people can play

import UIKit


let possibleTipsInferred = [0.15, 0.18, 0.20]
let possibleTipsExpliscit:[Double] = [0.15, 0.18, 0.20]
var numberOfItems = possibleTipsInferred.count
//println(\(numberOfItems))

var shoppingList: [String] = ["Eggs", "Milk"]
var firstItem = shoppingList[0]

println("Values = \(firstItem)")
println(firstItem)

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList.insert("Maple Syrup", atIndex: 0)
shoppingList.append("Flour")
shoppingList[4...6] = ["Bananas", "Apples"]

let apples = shoppingList.removeLast()
let mapleSyrup = shoppingList.removeAtIndex(0)


let array: Array<Int> = [1, 2, 3, 4]
let dictionary: Dictionary<String, Int> = ["Dog": 1, "elephant": 2]
var airports: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airports.isEmpty {
    
    println("empty")
} else {
    println("not empty")
}


airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}

airports["APL"] = "Apples International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictinary does not contain a value for DUB.")
}

