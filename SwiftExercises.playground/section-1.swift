import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
  
    return "My favorite cheese is cheddar."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

// change let to var to make mutable
var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

// change let to var to make mutable
var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
  println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<10 {
  println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
  
  var drinkArray: Array<String> = []

  for character in characters {
    if let faveDrink = character["favorite drink"]  {
      drinkArray.append(faveDrink)
    }
  }
  return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func convertArrayToString(arrayOfStrings: Array<String>) -> String {
  return ";".join(arrayOfStrings)
  
}

//let expectedOutput = "milk;eggs;bread;challah"
let expectedOutput = convertArrayToString(strings)




/*

Closures

*/

// Use a closure to sort this array alphabetically

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// The sorted function takes two arguments
// An array of values of a known type
// A closure that takes two arguments of the same type as as the array's contents
// Returns true if first value should appear before the second value and false otherwise

func sortTheCereals(cereal1: String, cereal2: String) -> Bool {
  
  // This is false
  // So first value should not appear before second value
  // "Golden Grahams" should appear after "Cheerios"
  // The array will appear in alphabetical ascending order.
  
  return cereal1 < cereal2
  
}

// Use a separate function to sort the array
// A function is a type of closure
let sortedCereals1 = sorted(cerealArray, sortTheCereals)

// Move function to an inline closure
let sortedCereals2 = sorted(cerealArray, {(cereal1: String, cereal2: String) -> Bool in
  return cereal1 < cereal2
  })

// Use shorthand
// Swift knows the types in the cerealArray
// Swift knows the sorted function is expecting a Bool to be returned
// Swift know something will be returned at the end (don't need return statement)
let sortedCereals3 = sorted(cerealArray, {cereal1, cereal2 in cereal1 < cereal2})

// why does Playground need 9 times to call closure vs. 8 times with other syntax
// why doesn't Playground show sortedCereals3 next to assignment statement above?
// It still works:
sortedCereals3

// Super-shorthand syntax
// Uses operator overloading
// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html#//apple_ref/doc/uid/TP40014097-CH27-ID42

let sortedCereals4 = sorted(cerealArray, <)



//http://stackoverflow.com/questions/25223058/how-to-sort-an-array-in-swift


















