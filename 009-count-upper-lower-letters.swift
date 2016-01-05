/* Write a program to count upper and lower case letters in a given string.

Logic:
 - Swift doesn't have any string functions to identify upper or lower case characters
 - So write extensions to identify upper and lower case characters
 - Use regular expressions & rangeOfString to identify upper and lower case characters

Test Cases:
 - Hello World should return 2 & 8
 - Hello 123 World $# should also return 2 & 8

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-009

*/

import Foundation 

extension Character {
  func isUpper() -> Bool {    
    if String(self).rangeOfString("[A-Z]", options: .RegularExpressionSearch) != nil {
      return true
    }
     return false
  }
}

extension Character {
  func isLower() -> Bool {
    if String(self).rangeOfString("[a-z]", options: .RegularExpressionSearch) != nil {
      return true
    }
     return false
  }
}

let inputString = "Hello @World #$@123"
var (upper,lower) = (0,0)

for c in inputString.characters {
  if c.isUpper() {
    upper += 1
  }
  
  if c.isLower() {
    lower += 1
  }
}

print(upper, lower)