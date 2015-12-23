/* Take an array of numbers, concatenate the even numbers as a string

Teaches:
  - map, filter, reduce
  - chaining

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-006

Ref:
 - http://www.electricpeelsoftware.com/2014/08/12/map-filter-reduce.html
*/


let input = [10,15,34,100,23,11]
let output = input
  .filter{$0 % 2 == 0}
  .map{String($0)}
  .reduce(""){$0.characters.count == 0 ? $1 : $0 + "," + $1}

print(output)
//10,34,100

/*
If the reduce is modifed as:
.reduce($0 + "," + $1)
you will get (, in the front)
,10,34,100
*/