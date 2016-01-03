/* Pangrams are sentences constructed by using every letter of the alphabet at least once 
Ex: 'The quick brown fox jumps over the lazy dog'

Logic:
 - one way is to iterate over the characters of the alphabet and check if it is present in the phrase
 - since swift provides set operations, we can subtract set of alphabet characters from set of phrase characters
 - result of subtraction should be a 0 length set (since all chars of alpha should be in phrase)

Test Cases:
 - We promptly judged antique ivory buckles for the next prize.
 - Crazy Fredrick bought many very exquisite opal jewels.

Author:
 - Joseph Jude (jjude.com / @jjude)

Git Repo:
 - http://github.com/jjude/swift-exercises

Blog Post:
 - http://tech.jjude.com/swift-challenge-008

*/

func isPangram(phrase: String) -> Bool {
  let alphabet = "abcdefghijklmnopqrstuvwxyz"
  let (alphabetSet, phraseSet) = (Set(alphabet.characters), Set(phrase.lowercaseString.characters))
  let resultSet = alphabetSet.subtract(phraseSet)
  return resultSet.count == 0 ? true : false
}

var phrase = readLine()!
print(isPangram(phrase))