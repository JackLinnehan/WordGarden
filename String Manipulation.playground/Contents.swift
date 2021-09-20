import UIKit

var myName = "Gallaugher"
var smallerString = "laugh"

if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("There is no \(smallerString) in \(myName)")
}


// hasPrefix + hasSuffic

var o = "Swift Developer"
var s = "Swift"

print("\n PREFIX SEARCH")

if o.hasPrefix(s) {
    print("You're hired")
} else {
    print("No job for you")
}

print("\n Suffix SEARCH")

o = "ios developer"
s = "developer"

if o.hasSuffix(s) {
    print("You're hired.  We nee more \(o)")
} else {
    print("No job for you.  No one needs any \(o)")
}

// .removeLast
print("\n")
var bandName = "The White Stripes"
let lastChar = bandName.removeLast()
print("After we remove \(lastChar) the band is just \(bandName)")

// .removeFirst(k: Int)
print("\n Remove First #")
var person = "Dr. Nick"
let title = "Dr."
person.removeFirst(title.count + 1)
print(person)

// replacingOccurances(of: with:)
print("\nReplacing occurances of")

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"
var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)
print(standardAddress, address)

// 123 St. James St.


// interate through a String
print("\n backward string")
var name = "Linnehan"
for letter in name {
    print(letter)
}
var backwardsName = ""
for letter in name {
    backwardsName = String(letter) + backwardsName
}
print(name, backwardsName)


// capitalization
print("\n Playing with Caps")
var crazyCaps = "SwiFT DeVElopEr"
var uppercase = crazyCaps.uppercased()
var lowercase = crazyCaps.lowercased()
var capitalized = crazyCaps.capitalized
print(crazyCaps, lowercase, capitalized)

var wordToGuess = "STARWARS"
var revealedWord = "_"

for _ in 1...wordToGuess.count - 1 {
    revealedWord = revealedWord + " _"
}
//revealedWord.removeLast()
print("\(wordToGuess) will show as \(revealedWord)")


//create a String from a repeating vlaue
var repeatingRevealedWord = "_" + String(repeating: " _", count: wordToGuess.count - 1)
print("using repeated String: '\(revealedWord)'")

print("\nReveal the Word")
var lettersGuessed = "SQFTXW"
revealedWord = ""

//loop through all letters in wordToGuess
for letter in wordToGuess {
    //check if letter in wordToGuess is in lettersGuessed
    if lettersGuessed.contains(letter) {
        revealedWord = revealedWord + "\(letter)"
    } else {
        revealedWord = revealedWord + "_ "
    }
}

revealedWord.removeLast()
print("wordToGuess = \(wordToGuess)")
print("lettersGuessed = \(lettersGuessed)")
print("revealedWord = \(revealedWord)")
