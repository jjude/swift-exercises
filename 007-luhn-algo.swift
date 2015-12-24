/* Luhn's Algorithm validates credit card numbers

Logic:

Reverse the digits:
61789372994
Sum the odd digits:
6 + 7 + 9 + 7 + 9 + 4 = 42 = s1
The even digits:
1,  8,  3,  2,  9
Two times each even digit:
2, 16,  6,  4, 18
Sum the digits of each multiplication:
2,  7,  6,  4,  9
Sum the last:
2 + 7 + 6 + 4 + 9 = 28 = s2

s1 + s2 ends in 0 (70) then it passes luh validation

Know that modulo 9 of a double digit number results in sum of digits.

Teaches:
  - map, reduce

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-007

Ref:
 - http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers
 - http://stackoverflow.com/a/33437542/770719
*/


//method: 1 - with extension
//really long

var oddNumbersAdded = 0
var evenNumbersAdded = 0
let number = "49927398717"
let reversedInts = number.characters.reverse().map { Int(String($0))! }

for (index, value) in reversedInts.enumerate(){
    if (index + 1) % 2 == 1 {
        oddNumbersAdded += value
    } else {
        evenNumbersAdded += (value == 9 ? 9 : (value * 2) % 9)
    }
}
if (oddNumbersAdded + evenNumbersAdded) % 10 == 0 {
    print("valid")
} else {
    print("not valid")
}

//method: 2 - short
func lunhsTest(number: String) -> Bool {
    var sum = 0
    let reversedInts = number.characters.reverse().map {Int(String($0))!}
    for (index, value) in reversedInts.enumerate() {
        sum += ((index % 2 == 1) ? (value == 9 ? 9 : (value * 2) % 9) : value)
    }
    
    return sum > 0 ? sum % 10 == 0 : false
}


print(lunhsTest("49927398716")) //valid
print(lunhsTest("49927398717")) //not valid
print(lunhsTest("1234567812345678")) //not valid
print(lunhsTest("1234567812345670")) //valid


