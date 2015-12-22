/*
Write a program that takes a comma separated sequence of words 
and prints the words in a comma-separated sequence after sorting them alphabetically.
Suppose the following input is supplied to the program:
without,hello,bag,world
Then, the output should be:
bag,hello,without,world

Teaches:
  - strings separation
  - sort collection

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-005

*/

import Foundation
let ar = "without,hello,bag,world"
let br = ar.componentsSeparatedByString(",")
print(br.sort())