/*
Write a program to compute factorial of a number

Uses:
  - recursion

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-004

*/

func factorial(n: Int) -> Int {
  if n == 1 {
    return 1
  } else {
    return n * factorial(n - 1)
  }  
}

print(factorial(5))