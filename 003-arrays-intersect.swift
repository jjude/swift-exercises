/*
Write a program to make an array of unique elements from two arrays

Uses:
  - arrays & set
  - intersect (set operation)
  - sort collection

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-003

Ref:
 - http://www.codingexplorer.com/swift-set-type/
 - https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html
*/

let array1: [Int] = [1,3,6,78,35,55,120,12]
//another method of declaring array, since swift can infer type
let array2 = [12,24,35,24,88,120,155]

let set1 = Set(array1)
let set2 = Set(array2)

//this will output [12,120,35]
print(set1.intersect(set2))

//if you want a sorted output
//this will output [12,35,120]
print(set1.intersect(set2).sort())

//can also be one long statement
print(Set([1,3,6,78,35,55,120,12]).intersect([12,24,35,24,88,120,155]).sort())