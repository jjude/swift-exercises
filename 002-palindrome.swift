/*
Check if Palindrome - Checks if the string entered by the user is a palindrome. 
That is that it reads the same forwards as backwards like “racecar”

Uses:
  - get input from standard input
  - unwrapping optional value
  - get characters of a string
  - reverse an array
  - string comparison

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-002
*/

print("Enter a string: ")
// readLine returns String?
// unwrap it with !
let userInput = readLine(stripNewline: true)!

let reverse = String(userInput.characters.reverse())

if (reverse == userInput) {
  print("\(userInput) is a palindrome") 
} else {
  print("\(userInput) is not a palindrome")
}  
