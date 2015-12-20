/*
Write a program which will find all such numbers which are divisible by 7 but are not a multiple of 5,
between 2000 and 3200 (both included). The numbers obtained should be printed in a comma-separated sequence on a single line.

Uses:
 - declaring int empty array
 - range
 - modulo division
 - append to array
 - convert int to string
 - map
 - join elements of array with a separator

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-001
*/

var output: [Int] = []
for i in 2000...3200{
  if (i % 7 == 0) && (i % 5 != 0){
    output.append(i)
  }
}

var outInString = output.map(){ String($0) }
print(outInString.joinWithSeparator(","))

/* 
this single line works too
print(output.map({ String($0) }).joinWithSeparator(","))
*/